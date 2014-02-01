bin_size=18;
wall_size=1.5;
height=15;
base=1;

x_cubes = 3;
y_cubes = 3;

cube_vector = [bin_size, bin_size, height-base];

difference() {
  cube([bin_size*x_cubes+wall_size*(x_cubes+1), bin_size*y_cubes+wall_size*(y_cubes+1), height]);
for ( j = [0 : y_cubes-1], i=[0 : x_cubes - 1] ) { 
    translate([wall_size*(i+1)+bin_size*i, wall_size*(j+1)+bin_size*j, base]) cube(cube_vector);
}

}

