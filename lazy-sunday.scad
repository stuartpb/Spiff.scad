include <spiffsans.scad>;

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
		translate([0,0,-thickness])
		linear_extrude(height=thickness,convexity=10)
		polygon([[-14,11.5],[14,11.5],[21.5,0.5],[21.5,-11.5],[-21.5,-11.5],[-21.5,0.5]]);
		translate([0,0,-depth])
		linear_extrude(height=depth+1,convexity=10)
		lazysunday();
	}
}