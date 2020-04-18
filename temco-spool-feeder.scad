id = 69.8;
od = id+2;
h = 18;
$fn=180;
difference() {
    cylinder(d=od,h=h);
    translate([0,0,1]) cylinder(d=id,h=h);
    translate([-2,od/2-5,7])cube([4,10,3]);
    translate([-10,od/2-5,7.5])cube([2,10,2]);
}
difference() {
    cylinder(d=9,h=h);
    cylinder(d=6,h=h);
}

translate([75,0,0]) {
    cylinder(d=5.8,h=h);
    difference() {
        cylinder(d=od,h=1);
        translate([5.6/2,5.6/2,0]) cube([od/2,od/2,1]);
        translate([5.6/2,-5.6/2-od/2,0]) cube([od/2,od/2,1]);
        translate([-5.6/2-od/2,5.6/2,0]) cube([od/2,od/2,1]);
        translate([-5.6/2-od/2,-5.6/2-od/2,0]) cube([od/2,od/2,1]);
    }
}
