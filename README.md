# Spiff.scad

Simple text writing for OpenSCAD

## Usage

### write(string,font,spacing=1)

Draws a group of 2D polygons for the given string, using the given font (see
section on Fonts, below). Glyphs are spaced apart by the value of the third
"spacing" parameter (1 unit by default). By default, if no font is specified,
[Spiff Sans](https://github.com/stuartpb/spiffsans) will be used.
(spiffsans.scad should be included in the same directory as Spiff.scad.)

These 2D polygons can be transformed in 3D space using the regular OpenSCAD
transformations in combination with [linear_extrude][].

[linear_extrude]: http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#2D_to_3D_Extrusion

### Example

    use <Spiff.scad>;

    write("Variable width text");

    translate([0,-12,0]) linear_extrude(height=4)
      write("Simple as anystring");

See [spiff-examples][] for more examples of Spiff.scad in use.

[spiff-examples]: https://github.com/stuartpb/spiff-examples

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
whole thing in [spiffsans.scad][]):

[spiffsans.scad]: https://github.com/stuartpb/spiffsans/blob/master/spiffsans.scad

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

Converters for various font formats to this font representation are being
developed at https://github.com/stuartpb/spaggers .

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
