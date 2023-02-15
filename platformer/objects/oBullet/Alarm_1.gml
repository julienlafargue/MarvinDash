/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var length = 20;
var angle_diff = random_range(-20,20);

var x_diff = x + lengthdir_x(length, direction - 180 + angle_diff);
var y_diff = y + lengthdir_y(length, direction - 180 + angle_diff);


part_particles_create(particle_system,x_diff,y_diff, particle_trail,1);

alarm_set(1, 1);