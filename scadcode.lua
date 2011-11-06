local m={}

local write = io.write
local strf = string.format

local function polygon(paths)
  write("polygon(points=[")
  local pathlengths = {}
  for i=1, #paths do
    local nodes = paths[i]
    pathlengths[i] = #nodes
    for j=1,#nodes do
      local node = nodes[j]
      write(strf("[%g,%g]",node[1],node[2]))
      if j ~= #nodes then write',' end
    end
    if i ~= #paths then write',' end
  end
  write"],paths=["
  local index = 0
  for i=1, #pathlengths do
    write'['
    local pathend = index+pathlengths[i]
    for j=index, pathend - 1 do
      write(j)
      if j ~= pathend - 1 then write',' end
    end
    index = pathend
    write']'
    if i~=#pathlengths then write',' end
  end
  write'])'
end

m.polygon = polygon

return m
