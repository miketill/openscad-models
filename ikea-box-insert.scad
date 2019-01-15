depth=163;
width=121;
height=40;
wall=.8;
inner_depth=163-wall*2;
inner_width=121-wall*2;
cols=3;
rows=4;
span_cols=[[0,1],[1,1],[2,1],[3,1],[4,1],[5,1]];
span_rows=[[0,0]];
//span_rows=[];
//span_cols=[];
col_width=inner_width/cols;
row_width=inner_depth/rows;
union() {
    difference() {
        cube([width,depth,height]);
        translate([wall,wall,wall]) cube([width-wall*2,depth-wall*2,height]);
    }
    translate([wall,wall,0]) {
        union() {
            for (i = [1:cols-1]) {
                translate([col_width*i-wall/2,0,0]) cube([wall,inner_depth,height]);
            }
            for (i = [1:rows-1]) {
                translate([0,row_width*i-wall/2,0]) cube([inner_width,wall,height]);
            }
        }
    }
}
