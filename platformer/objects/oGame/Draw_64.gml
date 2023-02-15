/// @description Insert description here
// You can write your code in this editor

if (!game_has_started) {
    draw_sprite_ext(
		Sprite30,
		(image_index / 60),
		(1300 - sprite_get_width(Sprite30)) / 2,
		(700 - sprite_get_height(Sprite30)) / 4,
		2.5,2.5,0,c_white,1)
}
