#! /usr/bin/env node

var fs = require('fs');
var fill = require('../lib/fill.js');
var normalize = require('../lib/normalize.js');
var scad = require('../lib/scad.js');

fs.writeFileSync(process.argv[3],scad.code(
  fill.caps(fill.widths(normalize.font(
    require('js-yaml').safeLoad(
      fs.readFileSync(process.argv[2],'utf8')))))),'utf8');
