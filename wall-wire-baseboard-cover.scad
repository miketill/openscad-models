//6.5mm deep
//23mm to hole
//
$fn=60;
length=135;
difference() {
    union() {
        cube([length,1,8]);
        cube([length,25,1]);
    }
    translate([5,21,-5]) cylinder(d=2,h=10);
    if (length > 20) {
        for(i=[1:floor(length/20)-1]) {
            translate([20*i,21,-5]) cylinder(d=2,h=10);
        }
    }
    translate([length-5,21,-5]) cylinder(d=2,h=10);
}

