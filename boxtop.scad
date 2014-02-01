bin_size=18;
wall_size=1.5;
base=2;
height=2;

extra_space=1;
extra_top=2.5;

  cube([bin_size*3+wall_size*4+extra_top*2, bin_size*3+wall_size*4+extra_top*2, height]);

cube_vector = [bin_size-extra_space*2, bin_size-extra_space*2, 1];

offset = extra_space + extra_top;

  translate([wall_size+offset, wall_size+offset, base]) cube(cube_vector);
  translate([wall_size*2+bin_size+offset, wall_size+offset, base]) cube(cube_vector);
  translate([wall_size*3+bin_size*2+offset, wall_size+offset, base]) cube(cube_vector);

  translate([wall_size*1+bin_size*0+offset, wall_size*2+bin_size*1+offset, base]) cube(cube_vector);
  translate([wall_size*2+bin_size*1+offset, wall_size*2+bin_size*1+offset, base]) cube(cube_vector);
  translate([wall_size*3+bin_size*2+offset, wall_size*2+bin_size*1+offset, base]) cube(cube_vector);

  translate([wall_size*1+bin_size*0+offset, wall_size*3+bin_size*2+offset, base]) cube(cube_vector);
  translate([wall_size*2+bin_size*1+offset, wall_size*3+bin_size*2+offset, base]) cube(cube_vector);
  translate([wall_size*3+bin_size*2+offset, wall_size*3+bin_size*2+offset, base]) cube(cube_vector);
