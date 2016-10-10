use <tslot.scad>

tsize = 1;

shelf_height = 6;
robot_height = 1.8*12;
desk_height = 3.3*12;

width = 22;
length = 30;



////////////////////////////
////////// FRAME ///////////
////////////////////////////

quadslot(desk_height);
translate([width-tsize*2,0]) quadslot(desk_height);
translate([0,length-tsize*2]) quadslot(robot_height);
translate([width-tsize*2,length-tsize*2]) quadslot(robot_height);

translate([0,tsize,shelf_height-tsize]) rotate([-90,0,0]) quadslot(length-tsize*4);
translate([width-tsize*2,tsize,shelf_height-tsize]) rotate([-90,0,0]) quadslot(length-tsize*4);
translate([tsize,0,shelf_height-tsize]) rotate([0,90,0]) quadslot(width-tsize*4);
translate([tsize,length-tsize*2,shelf_height-tsize]) rotate([0,90,0]) quadslot(width-tsize*4);

translate([0,tsize,robot_height-tsize]) rotate([-90,0,0]) quadslot(length-tsize*4);
translate([width-tsize*2,tsize,robot_height-tsize]) rotate([-90,0,0]) quadslot(length-tsize*4);
translate([tsize,0,robot_height-tsize]) rotate([0,90,0]) quadslot(width-tsize*4);
translate([tsize,length-tsize*2,robot_height-tsize]) rotate([0,90,0]) quadslot(width-tsize*4);



////////////////////////////
/////// SIDE PANELS ////////
////////////////////////////

color([0,1,1]) translate([tsize,-tsize,shelf_height-2*tsize]) rotate([90,00,90]) linear_extrude(height=0.25) difference() {
    square([length,robot_height-shelf_height+2*tsize]);

    square([tsize*2,tsize*2]);
    translate([length-tsize*2,0]) square([tsize*2,tsize*2]);
    translate([length-tsize*2,robot_height-shelf_height]) square([tsize*2,tsize*2]);
    translate([0,robot_height-shelf_height]) square([tsize*2,tsize*2]);
}

color([0,1,1]) translate([width-tsize*3-0.25,-tsize,shelf_height-2*tsize]) rotate([90,00,90]) linear_extrude(height=0.25) difference() {
    square([length,robot_height-shelf_height+2*tsize]);

    square([tsize*2,tsize*2]);
    translate([length-tsize*2,0]) square([tsize*2,tsize*2]);
    translate([length-tsize*2,robot_height-shelf_height]) square([tsize*2,tsize*2]);
    translate([0,robot_height-shelf_height]) square([tsize*2,tsize*2]);
}



////////////////////////////
///// TOTE & PLATFORM //////
////////////////////////////

translate([tsize*1.5,tsize,shelf_height+0.25]) cube([16.9,26.9,12.1]);

color([1,0,0]) translate([tsize+0.25,-tsize,shelf_height]) cube([width-4*tsize-0.5,length,0.25]);



////////////////////////////
////// BATTERY HOLDER //////
////////////////////////////

battery_width = 8.9;
battery_length = 5.5;
battery_height = 8.3;

color([0.1,0.1,0.1]) translate([tsize+0.5,tsize+0.5,shelf_height-battery_length]) cube([battery_height,battery_width,battery_length]);

color([0.1,0.1,0.1]) translate([battery_height+tsize+1,tsize+0.5,shelf_height-battery_length]) cube([battery_height,battery_width,battery_length]);

translate([0,tsize,shelf_height-5*tsize]) rotate([-90,0,0]) quadslot(10);
translate([0,10,shelf_height-4*tsize]) quadslot(tsize*2);

translate([width-2*tsize,tsize,shelf_height-5*tsize]) rotate([-90,0,0]) quadslot(10);
translate([width-2*tsize,10,shelf_height-4*tsize]) quadslot(tsize*2);

color([1,0,0]) translate([-tsize,tsize,-0.25]) cube([width,10,0.25]);
