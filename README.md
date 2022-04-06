# Spiff.scad

This was a module I designed as a (mostly) drop-in replacement for [Write.scad](https://www.thingiverse.com/thing:16193) with support for variable-width characters, using the [Spiff Sans](https://www.thingiverse.com/thing:13347) font I had designed a year and a half prior.

I intended to develop more tooling to support this module, but since I didn't have a 3D printer to test any of my designs with, I never did end up developing that: by the time I did finally get my own 3D printer, OpenSCAD had added support for `text()`, making both this and Write.scad redundant historical artifacts.

The bespoke font that I made for (what would eventually become) this project is now a proper TrueType/OpenType font, maintained at [my `spiff-sans` repo](https://github.com/stuartpb/spiff-sans). If this project were ever revived (which it is extremely unlkiely to be), I'd have it build its SCAD code from UFO `.glif` files in `SpiffScad.ufo` there instead of following the custom YAML format I designed here.

## Usage

### write(string,font,spacing=1)

Draws a group of 2D polygons for the given string, using the given font (see
section on Fonts, below). Glyphs are spaced apart by the value of the third
"spacing" parameter (1 unit by default). By default, if no font is specified,
Spiff Sans will be used. (spiffsans.scad should be included in the same directory
as Spiff.scad.)

These 2D polygons can be transformed in 3D space using the regular OpenSCAD
transformations in combination with [linear_extrude][].

[linear_extrude]: http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#2D_to_3D_Extrusion

### Example

    use <Spiff.scad>;

    write("Variable width text");

    translate([0,-12,0]) linear_extrude(height=4)
      write("Simple as anystring");

## Fonts

Spiff.scad consumes fonts in the form of an array-table of array-rows, where
each row corresponds to a glyph.

The first item in a row is the character that glyph corresponds to. The second
item in the array is the glyph's width in units. The third item, if the glyph
is drawable (ie. not a whitespace character), is an array, containing an array
of the points of the glyph (the `points` argument to `polygon()`) as the first
item, and the paths of the glyph (the `paths` argument to `polygon()`) as the
second.

For example, here are the first five rows from Spiff Sans (you can see the
whole thing in spiffsans.scad):

    ["",6,[[[0,0],[0,10],[6,10],[6,0],[2,2],[4,2],[4,8],[2,8]],[[0,1,2,3],[4,5,6,7]]]],
    [" ",5],
    ["!",2,[[[0,3],[0,10],[2,10],[2,3],[0,0],[0,2],[2,2],[2,0]],[[0,1,2,3],[4,5,6,7]]]],
    ["\"",6,[[[0,6],[0,10],[2,10],[2,6],[4,6],[4,10],[6,10],[6,6]],[[0,1,2,3],[4,5,6,7]]]],
    ["'",2,[[[0,6],[0,10],[2,10],[2,6]],[[0,1,2,3]]]],

If Spiff.scad can't find a glyph in the font, it will fall back to using the
first row of the table. For this reason, it's recommended to create a special
fallback glyph corresponding to the empty string ("") as your first row (as in
the example above). If you want to ignore missing characters, you can use
`["",0]` as your first row (there will still be space before and after the
position for the missing character).

## Requirements

Spiff.scad requires at least OpenSCAD 2013.06, as it uses
[module recursion][1] to calculate variable glyph widths.

[1]: https://github.com/openscad/openscad/blob/openscad-2013.06/RELEASE_NOTES

If you're stuck on an older version of OpenSCAD, you can still generate the
equivalent code for writing text using
[poorman-spiff](https://github.com/stuartpb/poorman-spiff).

Due to OpenSCAD's recursion limit, you may encounter problems writing longer
strings. If this happens, try breaking your write call up into multiple calls
with shorter strings.

## yaml2scad.js

This is a node.js script for converting a YAML-based definition of glyph points to a
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

See spiffsans.yaml for an example.

### Example usage

    node bin/yaml2scad.js spiffsans.yaml spiffsans.scad
