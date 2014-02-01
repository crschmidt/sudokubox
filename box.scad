bin_size=18;
wall_size=1.5;
height=12;
base=1;

cube_vector = [bin_size, bin_size, height-base];

difference() {
  cube([bin_size*3+wall_size*4, bin_size*3+wall_size*4, height]);
  translate([wall_size, wall_size, base]) cube(cube_vector);
  translate([wall_size*2+bin_size, wall_size, base]) cube(cube_vector);
  translate([wall_size*3+bin_size*2, wall_size, base]) cube(cube_vector);

  translate([wall_size*1+bin_size*0, wall_size*2+bin_size*1, base]) cube(cube_vector);
  translate([wall_size*2+bin_size*1, wall_size*2+bin_size*1, base]) cube(cube_vector);
  translate([wall_size*3+bin_size*2, wall_size*2+bin_size*1, base]) cube(cube_vector);

  translate([wall_size*1+bin_size*0, wall_size*3+bin_size*2, base]) cube(cube_vector);
  translate([wall_size*2+bin_size*1, wall_size*3+bin_size*2, base]) cube(cube_vector);
  translate([wall_size*3+bin_size*2, wall_size*3+bin_size*2, base]) cube(cube_vector);

}

