//cube([200,80,40]);
//cube([160,60,40]);
l=200;
w=80;
l2=170;
w2=65;
h=40;
wall=1.5;
difference() {
    cube([l,w,h]);
    translate([wall,wall,.6]) cube([l-wall*2,w-wall*2,h]);
}
translate([0,w-wall,0]) difference() {
    cube([l2,w2,h]);
    translate([wall,wall,.6]) cube([l2-wall*2,w2-wall*2,h]);
}

