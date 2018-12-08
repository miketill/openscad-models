difference(){
    cube([70,35,50]);
    translate([1,1,1]){
        cube([68,33,48]);
    }
    translate([10,16,45]){
        cube([50,3,10]);
    }
}

translate([0,-20,0]) {
    difference() {
        cube([89,1.6*6+1,40]);
        translate([.6,.6,1]) {
            for(p=[0:5]) {
                translate([0,p*1.6,p*2]) {
                    cube([87,1,54]);
                }
            }
        }
    }
}