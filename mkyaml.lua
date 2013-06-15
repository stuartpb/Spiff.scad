local glyphs = {};
local glist = {};
local safe = {
  ['!']='"!"',
  ['"']="'\"'",
  ["'"]='"\'"',
  [',']='","',
  ['\\']='"\\\\"',
  [':']='":"',
  ['`']='"`"',
  ['|']='"|"',
}
local form = 'seqlist'
for n,p in pairs(require'spiffsans') do
  local polys = {}
  for i=1, #p do
    local coords = {}
    for j=1, #p[i] do
      if form == 'svgpathd' or form == 'seqlist' then
        coords[j] = table.concat(p[i][j], ',')
      elseif form == 'pairlist' then
        coords[j] = '['..table.concat(p[i][j], ',')..']'
      end
    end
    if form == 'svgpathd' then
      polys[i] = 'M '..coords[1]..' L '..table.concat(coords,' ',2)
    elseif form == 'seqlist' then
      polys[i] = table.concat(coords,' ')
    elseif form == 'pairlist' then
      polys[i] = '['..table.concat(coords,',')..']'
    end
  end
  if form == 'svgpathd' then
    glyphs[n]='  '..(safe[n] or n)..': '..table.concat(polys,' ')
  elseif form == 'seqlist' then
    if #polys > 1 then
      glyphs[n]='  '..(safe[n] or n)..':\n  - '..table.concat(polys,'\n  - ')
    else
      glyphs[n]='  '..(safe[n] or n)..': '..polys[1]
    end
  elseif form == 'pairlist' then
    glyphs[n]='  '..(safe[n] or n)..': ['..table.concat(polys,',')..']'
  end
  glist[#glist+1]=n
end

table.sort(glist);

for i=1,#glist do
  print(glyphs[glist[i]])
end
