//80x60x35
d=18.2;
spacing=.4;
wall=.8;
rows=6;
cols=3;
width=wall*2+spacing*(cols-1)+d*cols;
depth=wall*2+spacing*(rows-1)+d*rows;
height=5;
cubby_width=60;
cubby_walls=1;
cubby_height=70;
cubby_depth=40;
full_cubby_width=cubby_width+cubby_walls*2;
full_cubby_height=cubby_height+cubby_walls;
full_cubby_depth=cubby_depth+cubby_walls*2;

translate([(full_cubby_width-width)/2,cubby_walls,0]) rotate([90,0,0]) difference() {
    cube([width,depth,height]);
    for(x=[0:cols-1],y=[0:rows-1]) {
        x_off = wall+x*(d+spacing)+d/2;
        y_off = wall+y*(d+spacing)+d/2;
        translate([x_off,y_off,1]) cylinder($fn=90,d=d,h=10);
    }
}

difference() {
    cube([full_cubby_width,full_cubby_depth,full_cubby_height]);
    translate([cubby_walls, cubby_walls, cubby_walls]) cube([cubby_width,cubby_depth,cubby_height]);
}
