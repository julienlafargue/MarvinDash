/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


particle_system_below = part_system_create_layer("Instances_below",0);

// supa powa
particle_shadow = part_type_create();

part_type_life(particle_shadow, 15, 15);
part_type_color1(particle_shadow, c_white);
part_type_alpha3(particle_shadow, 0.3, 0.1, 0.01);

// bullet debris

particle_bullet_death = part_type_create();

part_type_sprite(particle_bullet_death, spr_bullet_death, false, false, false);
part_type_life(particle_bullet_death, 25, 25);
part_type_size(particle_bullet_death, 1, 2, 0, 0);
part_type_blend(particle_bullet_death, 1);
part_type_gravity(particle_bullet_death, 0.05, 270);
part_type_direction(particle_bullet_death,0,359,1,false);
part_type_speed(particle_bullet_death,5,10,-0.05,0);