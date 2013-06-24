function setWidthFromPaths(glyph){
  var width = 0;
  for (var i = 0; i < glyph.paths.length; i++){
    for (var j = 0; j < glyph.paths[i].length; j++){
      width = Math.max(width,glyph.paths[i][j][0]);
    }
  }
  glyph.width = width;
  return glyph;
}

function setWidthsForFont(font){
  if(font.glyphs) {
    for (var glyph in font.glyphs) {
      if(!font.glyphs[glyph].width && font.glyphs[glyph].paths)
      setWidthFromPaths(font.glyphs[glyph]);
    }
  }
  if(font.noglyph && !font.noglyph.width && font.noglyph.paths) {
    setWidthFromPaths(font.noglyph);
  }
  return font;
}

exports.widths = setWidthsForFont;

var alphabet = "abcdefghijklmnopqrstuvwxyz";

exports.caps = function multicaps(font){
  for (var i = 0; i < 26; i++) {
    var char = alphabet.charAt(i);
    if (font.glyphs[char] && !font.glyphs[char.toUpperCase()])
      font.glyphs[char.toUpperCase()] = font.glyphs[char];
    else if (font.glyphs[char.toUpperCase()] && !font.glyphs[char])
      font.glyphs[char] = font.glyphs[char.toUpperCase()];
  }
  return font;
};