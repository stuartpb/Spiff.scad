include <spiffsans.scad>;

$fn = 25;

module lazysunday()
{
	translate([0,0.5,0])
	{
		translate([-13,0,0])
		spiffsans_capital_l();
		translate([-6,0,0])
		spiffsans_capital_a();
		translate([1,0,0])
		spiffsans_capital_z();
		translate([7,0,0])
		spiffsans_capital_y();
	}
	translate([0,-10.5,0])
	{
		translate([-20.5,0,0])
		spiffsans_capital_s();
		translate([-13.5,0,0])
		spiffsans_capital_u();
		translate([-6.5,0,0])
		spiffsans_capital_n();
		translate([0.5,0,0])
		spiffsans_capital_d();
		translate([7.5,0,0])
		spiffsans_capital_a();
		translate([14.5,0,0])
		spiffsans_capital_y();
	}
}

thickness = 3;
depth = 1;

scale([1.2,1,1]){
	difference(){
		linear_extrude(height=thickness,convexity=10)
		minkowski(){
		circle(r=2,$fn=25);
		polygon([[-13,10.5],[13,10.5],
				[13,-0.5],[20.5,-0.5],
				[20.5,-10.5],[-20.5,-10.5],
				[-20.5,-0.5],[-13,-0.5]]);
		}
		translate([0,0,thickness-depth])
		linear_extrude(height=depth+1,convexity=10)
		lazysunday();
	}
}

translate([0,0,thickness/2])
scale([1,1,thickness/2])
{
	translate([17,14,0])
	rotate_extrude(convexity = 10)
	translate([2, 0, 0])
	circle(r = 1, $fn = 25);

	translate([-17,14,0])
	rotate_extrude(convexity = 10)
	translate([2, 0, 0])
	circle(r = 1);
}