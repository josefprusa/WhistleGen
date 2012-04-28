l11 = "JP";
l12 = "JP";
l13 = "JP";

l21 = "JP";
l22 = "JP";
l23 = "JP";

l31 = "JP";
l32 = "JP";
l33 = "JP";

l41 = "JP";
l42 = "JP";
l43 = "JP";l11 = "HA";
l12 = "CK";
l13 = "IT";


include <Candal.scad>

// Distance between copies X axis
w = 44;

// Distance between copies Y axis
h = 28;

row = 0;

translate([0*w,0*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l11, steps = 3, center = true);
}
}

translate([1*w,0*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l12, steps = 3, center = true);
}
}

translate([2*w,0*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l13, steps = 3, center = true);
}
}


translate([0*w,1*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l21, steps = 3, center = true);
}
}

translate([1*w,1*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l22, steps = 3, center = true);
}
}

translate([2*w,1*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l23, steps = 3, center = true);
}
}




translate([0*w,2*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l31, steps = 3, center = true);
}
}

translate([1*w,2*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l32, steps = 3, center = true);
}
}

translate([2*w,2*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l33, steps = 3, center = true);
}
}





translate([0*w,3*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l41, steps = 3, center = true);
}
}

translate([1*w,3*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l42, steps = 3, center = true);
}
}

translate([2*w,3*h,0]){
import_stl("blank-whistle.stl");
translate([-9, -5.5, 20])scale([0.25, 0.25, 0.2])  {
	translate([0, 0, 0]) color("red") Candal(l43, steps = 3, center = true);
}
}
