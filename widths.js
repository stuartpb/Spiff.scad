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

exports.setWidthFromPaths = setWidthFromPaths;
exports.setWidthsForFont = setWidthsForFont;