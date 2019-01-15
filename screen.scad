difference() {
cube([127,127,.6]);
for (row=[0:63]) {
    for (col=[0:63]) {
        translate([row*2+1,col*2+1,0]) cube([1,1,2]);
    }
}
}