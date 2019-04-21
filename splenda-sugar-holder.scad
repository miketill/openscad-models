length=145;
depth=65;
height=65;
wall=1.6;
//wall=.5;
spacing=depth+wall;
camfer=.5;

difference() {
    union() {
        holder();
        translate([0,depth+wall,0]) holder();
    }
    rotate([0,45,0]) translate([-camfer/2,0,-camfer/2]) cube([camfer,200,camfer]);
    translate([0,0,height+wall]) rotate([0,45,0]) translate([-camfer/2,0,-camfer/2]) cube([camfer,200,camfer]);
}
module holder() {
    difference() {
        cube([length+wall*2, depth+wall*2, height+wall]);
        translate([wall,wall,wall])
            cube([length, depth, height]);
    }
}
//russ dunkly
