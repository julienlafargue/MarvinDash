/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Set speed & image angle
particle_system = part_system_create_layer("Instances", 0);
particle_trail = part_type_create();

part_type_sprite(particle_trail, spr_exhaust,0,0,0);
part_type_life(particle_trail, 10, 10);
part_type_alpha3(particle_trail,1,1,0);
part_type_size(particle_trail,1,3,0,0);
part_type_blend(particle_trail, 1);

//audio_play_sound(Laser_Shot_Sound_Effect, 0, false);

alarm[1] = 3;

image_angle = direction;