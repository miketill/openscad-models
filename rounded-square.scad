$fn=180;
translate([30,0,0]) rotate_extrude($fn=360) translate([20,0,0]) rounded_square(10,10,1);
module rounded_square(x,y,r) {
    hull() {
        translate([r,r,0]) circle(r=r);
        translate([x-r,r,0]) circle(r=r);
        translate([r,y-r,0]) circle(r=r);
        translate([x-r,y-r,0]) circle(r=r);
    }
}
