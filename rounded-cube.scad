$fn=180;
rotate([0,0,45], [0,0,0]) translate([10,0,0]) rounded_cube(10,10,10,1);
module rounded_cube(x,y,z,r) {
    //linear_extrude(z)
    hull() {
        translate([r,r,r]) sphere(r=r);
        translate([x-r,r,r]) sphere(r=r);
        translate([r,y-r,r]) sphere(r=r);
        translate([x-r,y-r,r]) sphere(r=r);

        translate([r,r,z-r]) sphere(r=r);
        translate([x-r,r,z-r]) sphere(r=r);
        translate([r,y-r,z-r]) sphere(r=r);
        translate([x-r,y-r,z-r]) sphere(r=r);
    }
}
