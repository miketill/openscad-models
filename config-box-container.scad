// h/w/d are exclusive of walls
thickness_bottom=2;
thickness_outer_wall=1;
thickness_inner_wall=1;
cell_height=20;
cell_width=40;
cell_depth=40;
cells = [
    [1,2,3,4]
    , [5,6,7,8]
    , [9,9,9,9]
];

build_container(thickness_bottom,thickness_outer_wall,thickness_inner_wall,cell_height,cell_width,cell_depth,cells);

module build_container(tb,tow,tiw,h,w,d,cells) {
    cnt_cx = len(cells[0]);
    cnt_cy = len(cells);
    total_x = cnt_cx*w+2*tow+(cnt_cx-1)*tiw;
    total_y = cnt_cy*d+2*tow+(cnt_cy-1)*tiw;
    total_z = tb+h;

    echo("Box totals:", total_x, total_y, total_z);

    difference() {
        cube([total_x,total_y,total_z]);
        translate([tow,tow,tb]) cube([total_x-2*tow,total_y-2*tow,total_z-tb]);
    }
    for (x=[0:cnt_cx-1],y=[0:cnt_cy-1]) {
        x_right = x+1;
        y_top = y+1;
        if (x_right < cnt_cx && cells[y][x] != cells[y][x_right]) {
            offset_y = tow+y*(d+tiw)-tiw;
            translate([tow+w*x_right+tiw*x,offset_y,0])
                cube([tiw,d+tiw*2,h+tb]);
        }
        if (y_top < cnt_cy && cells[y][x] != cells[y_top][x]) {
            offset_x = tow+x*(w+tiw)-tiw;
            translate([offset_x,tow+d*y_top+tiw*y,0])
                cube([w+tiw*2,tiw,h+tb]);
        }
    }
}
