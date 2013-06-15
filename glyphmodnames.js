var names = {
  "!": "exclaim",
  "?": "question",
  ":": "colon",
  ";": "semicolon",
  ".": "period",
  "-": "hyphen",
  "'": "apostrophe",
  '"': "quote",
  "|": "bar",
  "/": "slash",
  "\\": "backslash",
  "_": "underscore",
  "`": "grave",
  ",": "comma",
  "=": "equals",
  "+": "plus"
};

var alphabet = "abcdefghijklmnopqrstuvwxyz";
for (var i = 0; i < 26; i++) {
  var char = alphabet.charAt(i);
  names[char] = "lowercase_" + char;
  names[char.toUpperCase(char)] = "uppercase_" + char;
}
for (var i = 0; i < 10; i++) {
  names[i] = "digit_" + i;
}

module.exports = names;
