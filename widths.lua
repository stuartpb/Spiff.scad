local widths = {}

local math = require "math"
local max = math.max
local pairs = pairs

local function glyphw(glyph)
  local width = 0
  for _,path in pairs(glyph) do
    for _,point in pairs(path) do
      width = max(width,point[1])
    end
  end
  return width
end

widths.glyph = glyphw

function widths.glyphs(glyphs)
  local widths_t = {}
  for k, glyph in pairs(glyphs) do
    widths_t[k] = glyphw(glyph)
  end
  return widths_t
end

return widths
