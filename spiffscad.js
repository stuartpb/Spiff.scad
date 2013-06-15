function quoted(char) {
  // This is kind of overkill, but
  return JSON.stringify(char);
}

var names = require('./glyphmodnames.js');
var scadcode = require('./scadcode.js');

module.exports = function(font){

  var prefix = font.prefix
    || font.name && font.name.replace(/\W*/g,'').toLowerCase()
    || 'font';

  var glyphlist = [];

  for (var k in font.glyphs) {
    glyphlist[glyphlist.length] = k;
  }

  glyphlist.sort();

  var lines = [];
  var line, i, char;

  // Add header.
  if (font.name) {
    lines[lines.length] = '// ' + font.name;
  }
  if (font.author) {
    lines[lines.length] = '// Author: ' + font.author;
  }

  if (lines.length > 0) lines[lines.length] = '';

  lines[lines.length] = 'module ' + prefix + '_write(string,spacing=1,i=0) {'
    +' if (i < len(string)) {';
  for(i=0; i < glyphlist.length; i++) {
    char = glyphlist[i];
    line = '  ';
    if (i > 0) line += '} else ';
    line += 'if (string[i] == ' + quoted(char);
    if(char.toUpperCase() != char.toLowerCase()
      && !(font.glyphs[char.toUpperCase()]
        && font.glyphs[char.toLowerCase()]))
          line += ' || string[i] == ' + quoted(
            char == char.toLowerCase() ?
            char.toUpperCase() : char.toLowerCase());
    line += ') {';
    lines[lines.length] = line;

    if(font.glyphs[char].paths)
      lines[lines.length] = '    ' + prefix + '_' + names[char] + '();';

    lines[lines.length] = '    '
      + 'translate([' + font.glyphs[char].width + ' + spacing,0,0]) '
      + prefix +'_write(string,spacing,i=i+1);';
  }
  if (font.noglyph) {
    lines[lines.length] = '  } else {';
    lines[lines.length] = '    ' + prefix + '_noglyph();';
    lines[lines.length] = '    '
      + 'translate([' + font.noglyph.width + ' + spacing,0,0]) '
      + prefix +'_write(string,spacing,i=i+1);';
  } else {
    lines[lines.length] =
      '  } else echo(str("Unknown character: ", string[i]));';
  }
  lines[lines.length] = '  }';
  lines[lines.length] = '}}';
  lines[lines.length] = '';
  for(i=0; i < glyphlist.length; i++) {
    char = glyphlist[i];
    if(font.glyphs[char].paths) {
      lines[lines.length] = 'module ' + prefix + '_' + names[char] +'() {';
      lines[lines.length] = '  '
        + scadcode.polygon(font.glyphs[char].paths);
      lines[lines.length] = '}';
    }
  }
  return lines.join('\n');
};
