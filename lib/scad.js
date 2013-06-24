function polyvector(paths){
  var points = [];
  var indices = [];
  for (var i=0; i < paths.length; i++) {
    var pathIndices = indices[i] = [];
    for (var j=0; j < paths[i].length; j++) {
      pathIndices[pathIndices.length] = points.length;
      points[points.length] = paths[i][j];
    }
  }

  return [points,indices];
}

function code(font){

  var prefix = font.prefix
    || font.name && font.name.replace(/\W*/g,'').toLowerCase()
    || 'font';

  var glyphlist = [];

  for (var k in font.glyphs) {
    glyphlist[glyphlist.length] = k;
  }

  glyphlist.sort();

  var lines = [];
  var i, char, row;

  // Add header.
  if (font.name) {
    lines[lines.length] = '// ' + font.name;
  }
  if (font.author) {
    lines[lines.length] = '// Author: ' + font.author;
  }
  if (font.version) {
    lines[lines.length] = '// Version: ' + font.version;
  }

  if (lines.length > 0) lines[lines.length] = '';

  lines[lines.length] = prefix +' = [';

  if (font.noglyph) {
    row = ['', font.noglyph.width];

    if (font.noglyph.paths)
      row[row.length] = polyvector(font.noglyph.paths);

    lines[lines.length] = '  ' + JSON.stringify(row) + (glyphlist.length == 0 ? '' : ',');
  } else {
    lines[lines.length] = '["",0],';
  }

  for (i=0; i < glyphlist.length; i++) {
    char = glyphlist[i];

    row = [char, font.glyphs[char].width];

    if (font.glyphs[char].paths)
      row[row.length] = polyvector(font.glyphs[char].paths);

    lines[lines.length] = '  ' + JSON.stringify(row) + (i == glyphlist.length-1? '' : ',');
  }

  lines[lines.length] = '];';

  return lines.join('\n') + '\n';
};

exports.polygon = polyvector;
exports.code = code;
