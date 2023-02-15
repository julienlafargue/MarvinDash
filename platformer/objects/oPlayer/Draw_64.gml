/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spHealthBar, lifeCount, self.healthX, self.healthY, 500, 50);

if (hit_state == true) {
	draw_sprite_stretched_ext(spHealthBar, lifeCount, self.healthX, self.healthY, 500, 50, c_red, 1);
}

draw_sprite_stretched(spr_supapowa_bar, self.multiplicator - 1, self.healthX, self.healthY + 50, 500, 25);