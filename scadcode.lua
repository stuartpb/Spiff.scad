local m={}

local write = io.write
local strf = string.format
local concat = table.concat

local function polygon(paths)

  local polypoints = {}
  local polypoint_i = 1

  local polypaths = {}

  for path_i=1, #paths do
    local pathpoints = paths[path_i]

    --This path, in poly point indices
    local polypath = {}

    for pathpoint_i=1,#pathpoints do
      local pathpoint = pathpoints[pathpoint_i]
      polypoints[polypoint_i] = strf("[%g,%g]",pathpoint[1],pathpoint[2])
      polypath[pathpoint_i] = polypoint_i - 1
      polypoint_i = polypoint_i + 1
    end

    polypaths[path_i] = concat(polypath,',')
  end

  return "polygon(points=["..
  concat(polypoints,',').."],paths=[["..
  concat(polypaths,'],[')..']])'
end

m.polygon = polygon

return m
