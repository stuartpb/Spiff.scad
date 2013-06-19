var fs = require('fs');

fs.writeFileSync(process.argv[3],require('./spiffscad.js')(
  require('./multicaps.js')(
  require('./widths.js').setWidthsForFont(
  require('./pointsequence.js').parseFont(
    require('js-yaml').safeLoad(
      fs.readFileSync(process.argv[2])))))),'utf8');
