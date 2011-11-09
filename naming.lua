local names = {}

names["!"]="exclaim"
names["?"]="question"
names[":"]="colon"
names["."]="period"
names["-"]="hyphen"
names["'"]="apostrophe"
names['"']="quote"
names["|"]="bar"
names["/"]="slash"
names["\\"]="backslash"
names["_"]="underscore"
names["`"]="grave"
names[","]="comma"
names["="]="equals"
names["+"]="plus"

for i = string.byte"A", string.byte"Z" do
  local char = string.char(i)
  names[char]= string.format("capital_%s",string.lower(char))
end

for i = string.byte"a", string.byte"z" do
  local char = string.char(i)
  names[char]= string.format("lowercase_%s",char)
end

for i = string.byte"0", string.byte"9" do
  local char = string.char(i)
  names[char]= string.format("digit_%s",char)
end

return names
