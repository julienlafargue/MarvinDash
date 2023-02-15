/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if (self.supa_powa == true) {
	part_type_sprite(oParticles.particle_shadow, sprite_index, 0,0,0);
	part_particles_create(oParticles.particle_system_below, x, y, oParticles.particle_shadow,1);
}
alarm_set(1,3);