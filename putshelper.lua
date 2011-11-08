local widths = require "widths"
local names = require "naming"

local glyphs = dofile "spiffsans.lua"
local fontname = "spiffsans"
local putsname = fontname .. "_puts"

local string = require 'string'
local sub = string.sub
local gsub = string.gsub
local upper = string.upper
local match = string.match

local table = require 'table'
local concat = table.concat

local io = require 'io'
local write = io.write
local read = io.read

local gwidths = widths.glyphs(glyphs)

-- Settings that aren't variables per se

--space between characters
local charspace = 1
--width of a space (charspace is NOT added to this)
local spacew = 6

-- Variables

local offset = 0
local offsets = {}

-- Input variables
local putstr
if not arg[1] then
  write "Enter the text to be drawn: "
  putstr = read"*l"
else
  putstr = arg[1]
end

-- hack because Spiff Sans doesn't have a lower case
putstr = upper(putstr)

--function that will recieve each character in gsub
local function to_gsub(char)
  if match(char,'%s') then
    --note that this treats ALL whitespace characters
    --as a single space. You'll have to figure out
    --your own solution if you want tabs or newlines.
    offset = offset + spacew
    return ""
  else
    assert(gwidths[char],"character missing from font: "..char)
    offsets[#offsets+1] = offset
    offset = offset + gwidths[char] + charspace
    return '"'..char..'",'
  end
end

local chars = '['..sub(gsub(putstr,'.',to_gsub),1,-2)..']'
write(putsname,'(',chars,',',#offsets,',','[',concat(offsets,','),'])','\n')
