//cube([200,80,40]);
//cube([160,60,40]);
l=150;
w=80;
h=40;
wall=1.5;
difference() {
    cube([l,w,h]);
    translate([wall,wall,.6]) cube([l-wall*2,w-wall*2,h]);
}

