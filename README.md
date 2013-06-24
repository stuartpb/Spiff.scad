# spaggers

This is a collection of converters to the font format used by [Spiff.scad][].

[Spiff.scad]: https://github.com/stuartpb/Spiff.scad

## yaml2scad.js

A node.js script for converting a YAML-based definition of glyph points to a
Spiff.scad-compatible font. Takes the input filename as the first command line
parameter and the output filename as the second command line parameter.

### Expected YAML format

- **name**: The name of the font (eg. Spiff Sans). Output as comment.
- **author**, **version**: Also output as comments. Pretty self-explanatory.
- **prefix**: The name of the variable to assign the font to.
- **glyphs**: Mapping of glyphs to point definitions. Glyph definitions can be
  represented as an object with **paths** and **width** values, or as just the
  content of the **paths** value (in which case the **width** will be
  calculated as the rightmost-point in the paths). **paths** can be represented
  as a single path or array of paths (if the glyph is constructed of multiple
  paths), and each individual path can be represented as either an array of
  point coordinate pair arrays (eg. `[[2,2],[2,4],[4,4],[4,2]]`) or a string
  separating each coordinate by space or comma, a la SVG (eg.
  `"2,2 2,4 4,4 4,2"`). 
- **noglyph**: The fallback glyph to use.

See [spiffsans.yaml][] for an example.

[spiffsans.yaml]: https://github.com/stuartpb/spiffsans/blob/master/spiffsans.yaml

### Example usage

    node bin/yaml2scad.js spiffsans.yaml spiffsans.scad

## Coming soon

A browser-based SVG font converter (and maybe a browser implementation of
yaml2scad).