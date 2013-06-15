include <spiffsans.scad>;

$fn = 25;

module lazysunday()
{
	translate([-12.5,0.5,0])
	{
		translate([0,0,0])
		spiffsans_uppercase_l();
		translate([6,0,0])
		spiffsans_uppercase_a();
		translate([13,0,0])
		spiffsans_uppercase_z();
		translate([19,0,0])
		spiffsans_uppercase_y();
	}
	translate([-20.5,-10.5,0])
	{
		translate([0,0,0])
		spiffsans_uppercase_s();
		translate([7,0,0])
		spiffsans_uppercase_u();
		translate([14,0,0])
		spiffsans_uppercase_n();
		translate([21,0,0])
		spiffsans_uppercase_d();
		translate([28,0,0])
		spiffsans_uppercase_a();
		translate([35,0,0])
		spiffsans_uppercase_y();
	}
}

thickness = 3;
depth = 1;

scale([1.2,1,1]){
	difference(){
		linear_extrude(height=thickness,convexity=10)
		minkowski(){
		circle(r=2,$fn=25);
		polygon([[-12.5,10.5],[12.5,10.5],
				[12.5,-0.5],[20.5,-0.5],
				[20.5,-10.5],[-20.5,-10.5],
				[-20.5,-0.5],[-12.5,-0.5]]);
		}
		translate([0,0,thickness-depth])
		linear_extrude(height=depth+1,convexity=10)
		lazysunday();
	}
}

translate([0,0,thickness/2])
scale([1,1,thickness/2])
{
	translate([17,13,0])
	rotate_extrude(convexity = 10)
	translate([2, 0, 0])
	circle(r = 1, $fn = 25);

	translate([-17,13,0])
	rotate_extrude(convexity = 10)
	translate([2, 0, 0])
	circle(r = 1);
}