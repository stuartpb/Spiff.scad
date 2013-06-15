# spiffsans

A variable-width font for OpenSCAD

## Usage

    include <spiffsans.scad>;

    scale([1.75,1.75,1]) linear_extrude(height=8)
      spiffsans_write("VARIABLE WIDTH TEXT!")

## Notes

  Spiff Sans uses recursion for its variable widths. Until OpenSCAD is bumped
  to have a higher call stack, you might have trouble with strings of more than
  ~100 characters. Try breaking your write call up into multiple calls with
  shorter strings.
