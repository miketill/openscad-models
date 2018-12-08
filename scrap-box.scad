$fa=1;
$fs=.2;
boxsize = 150;
wallthickness = .45*3;
capdepth=3;

innerbox = boxsize - wallthickness*2;
hole=boxsize/3;
opening=hole*1.5;
openheight=hole/2;

difference() {
    cube([boxsize,boxsize,boxsize-wallthickness]);
    translate([wallthickness,wallthickness,wallthickness])
        cube([innerbox,innerbox,innerbox+wallthickness]);
}

translate([boxsize+20,0,0]) {
    difference() {
        union() {
            translate([wallthickness,wallthickness,0])
                cube([innerbox,innerbox,capdepth]);
            translate([0,0,capdepth])
                cube([boxsize,boxsize,wallthickness]);
        }
        translate([boxsize/2,boxsize/2,0])
            cylinder(openheight,d1=hole,d2=opening);
    }
    difference() {
        translate([boxsize/2,boxsize/2,0])
            cylinder(openheight,d1=hole,d2=opening);
        translate([boxsize/2,boxsize/2,0])
            cylinder(openheight,d1=hole-wallthickness,d2=opening-wallthickness);
    }
}
