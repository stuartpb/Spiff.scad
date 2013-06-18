# Spiff.scad

Simple text writing for OpenSCAD

## Usage

### write(string,font,spacing=1)

Draws a group of 2D polygons for the given string, using the given font (see
section on Fonts, below). Glyphs are spaced apart by the value of the third
"spacing" parameter (1 unit by default). By default, if no font is specified,
[Spiff Sans](https://github.com/stuartpb/spiffsans) will be used.

These 2D polygons can be transformed in 3D space using the regular OpenSCAD
transformations in combination with [linear_extrude][].

[linear_extrude]: http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#2D_to_3D_Extrusion

### Example

    use <Spiff.scad>;

    scale([1.75,1.75,1]) linear_extrude(height=8)
      write("VARIABLE WIDTH TEXT!");

## Fonts

## Requirements

Spiff.scad uses [scope](https://github.com/openscad/openscad/pull/338) and
[recursion](https://github.com/openscad/openscad/issues/116), so you will need
a recent (post-June 2013) development snapshot of OpenSCAD to use it.

If you're stuck on an older version of OpenSCAD, you can still generate the
equivalent code for a font using [poorman-spiff](https://github.com/stuartpb/poorman-spiff).

Spiff.scad uses recursion to achieve variable widths. Due to OpenSCAD's
recursion limit, you may encounter problems writing longer strings. If this
happens, try breaking your write call up into multiple calls with shorter
strings.
