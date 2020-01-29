//0.4 Nozzle
//0.4 Layer

wall = 0.8;
width = 165;
depth = 5;
height = 180;
pencil = 10;
pencil_height = 75;
holders = 2;
pencil_holders = 4;
pencil_space = 20;

full_cube_depth = depth*holders+wall*(holders+1)+pencil+wall*3;
full_cube_width = width+wall*2;
full_cube_height = height+wall;

difference() {
    cube([full_cube_width, full_cube_depth, full_cube_height]);
    for (x = [0:holders-1]) {
        translate([wall, wall+(depth+wall)*x, wall])
            cube([width, depth, height]);
    }
    pencil_width = (pencil+pencil_space)*pencil_holders-pencil_space;
    pencil_offset = (width-pencil_width)/2+pencil/2;
    for (x = [0:pencil_holders-1]) {
        x_off = pencil_offset+(pencil_space+pencil)*x;
        y_off = wall*2+pencil/2+(depth+wall)*holders;
        z_off = wall+height-pencil_height;
        translate([x_off, y_off, z_off])
            cylinder(d=pencil, h=pencil_height);
    }
}
