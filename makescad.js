require('js-yaml');
require('fs').writeFileSync('spiffsans.scad',require('./spiffscad.js')(
  require('./widths.js').setWidthsForFont(
  require('./pointsequence.js').parseFont(require('./spiffsans.yaml')))),'utf8');
