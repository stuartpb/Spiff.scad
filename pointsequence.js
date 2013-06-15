function parseSequence(seq){
  var sequence = [];
  var nums = seq.split(/[\s,]+/g);
  for (var i = 0; i < nums.length; i+=2){
    sequence[sequence.length] = [parseFloat(nums[i]),parseFloat(nums[i+1])];
  }
  return sequence;
}

function parsePaths(paths) {
 if(Array.isArray(paths)) {
   if(typeof paths[0] == "string"){
      for (var i = 0; i < paths.length; i++) {
        paths[i] = parseSequence(paths[i]);
      }
      return paths;
    } else return paths;
  } else if (typeof paths == "string") {
    return [parseSequence(paths)];
  } else return paths;
}

function parseGlyph(glyph){
  if (Array.isArray(glyph) || typeof glyph == "string")
    glyph = {paths: glyph};

  if (glyph.paths)
    glyph.paths = parsePaths(glyph.paths);

  return glyph;
}

function parseFont(font){
  if(font.glyphs) {
    for (var glyph in font.glyphs){
      font.glyphs[glyph] = parseGlyph(font.glyphs[glyph]);
    }
  }
  if(font.noglyph) {
    font.noglyph = parseGlyph(font.noglyph);
  }
  return font;
}

exports.parseSequence = parseSequence;
exports.parsePaths = parsePaths;
exports.parseGlyph = parseGlyph;
exports.parseFont = parseFont;
