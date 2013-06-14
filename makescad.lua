--The header that will go at the top of the SCAD file.
local header = [==[
// Spiff Sans
// Author: Stuart P. Bentley <stuart@testtrack4.com>
]==]

--The prefix that will be applied to the modules of this font.
local fontname = "spiffsans"

--The filename to output to.
local outfilename = fontname .. '.scad'

--The glyphs of this font.
local glyphs = dofile "spiffsans.lua"

--The general functions to write SCAD code.
local scadcode = require "scadcode"
local polygon = scadcode.polygon

--The names of characters for modules.
local names = require "naming"

-- Local library functions
local string = require 'string'
local upper = string.upper
local lower = string.lower
local byte = string.byte
local format = string.format

local table = require 'table'
local sort = table.sort
local pairs = pairs

local io = require 'io'
local output = io.output
local write = io.write

-- Process ------------------------------------------------

local glyphlist = {}

for k in pairs(glyphs) do
  glyphlist[#glyphlist+1]=k
end

sort(glyphlist,
  function(m,n) return byte(m) < byte(n) end)


-- Open ---------------------------------------------------

output(outfilename)

-- Write --------------------------------------------------

write(header)

write("\n")

write("module ",fontname,"_puts(letters, count, offsets)",'\n')
write([==[
{
  for(i=[0:count-1])
  {
    translate([offsets[i],0,0])
    {
]==],"      ",fontname,"_lookup_draw(letters[i]);",'\n',
[==[
    }
  }
}
]==])

write("\n")

write("module ",fontname,"_lookup_draw(char)",'\n')
write([==[
{
  if(char==" ") {} //silly lookup, space can't be printed
]==])
--write else cases for each glyph
for i=1, #glyphlist do
  local char = glyphlist[i]
  --if the set of glyphs has one character standing in for both cases,
  if not glyphs[upper(char)] or not glyphs[lower(char)] then
    --it really should have been handled before this, but it can be handled here
    write('  else if(char == "',upper(char),'" || char == "',lower(char),'") ')
  else
    write(format('  else if(char == %q) ',char))
  end
  write(fontname,"_",names[char],'();','\n')
end
write([==[
  else echo(str("Unknown character: ", char));
}
]==])

write("\n")

--write modules for each glyph
--write else cases for each glyph
for i=1, #glyphlist do
  local char = glyphlist[i]
write("module ",fontname,"_",names[char],"()",'\n',
  "{",'\n',
  "  ",polygon(glyphs[char]),';','\n',
  "}",'\n',
  '\n')
end
