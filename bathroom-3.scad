//cube([200,80,40]);
//cube([160,60,40]);
l=220;
w=142;
h=40;
wall=1.5;
difference() {
    cube([l,w,h]);
    translate([wall,wall,.6]) cube([l-wall*2,w-wall*2,h]);
}
translate([80,0,0]) cube([wall,142,h]);
translate([0,142/2-wall/2,0]) cube([80,wall,h]);

