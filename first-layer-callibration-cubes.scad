countIdx=0;
size=100;
offset=size+10;
for (i=[0:countIdx])
    for (j=[0:countIdx])
        translate([i*offset,j*offset,0]) cube([size,size,.2]);