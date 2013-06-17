# spiffsans

A variable-width font for OpenSCAD

## Usage

    use <Spwrite.scad>;
    include <spiffsans.scad>;

    scale([1.75,1.75,1]) linear_extrude(height=8)
      write("VARIABLE WIDTH TEXT!",spiffsans);

## Notes

  Spwrite uses recursion for its variable widths. Due to OpenSCAD's
  recursion limit, you might have trouble with strings of more than
  ~1000 characters. If you encounter problems with this, try breaking your
  write call up into multiple calls with shorter strings.
