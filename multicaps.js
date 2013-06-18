var alphabet = "abcdefghijklmnopqrstuvwxyz";

module.exports = function multicaps(font){
  for (var i = 0; i < 26; i++) {
    var char = alphabet.charAt(i);
    if (font.glyphs[char] && !font.glyphs[char.toUpperCase()])
      font.glyphs[char.toUpperCase()] = font.glyphs[char];
    else if (font.glyphs[char.toUpperCase()] && !font.glyphs[char])
      font.glyphs[char] = font.glyphs[char.toUpperCase()];
  }
  return font;
};