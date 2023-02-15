/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (other.player == self) exit;

effect_create_above(ef_star, x, y, 0, c_fuchsia);

if (hit_state == false) {
	hit_state = true;
}

lifeCount -= 1;
if (lifeCount == 0) {
	room_goto(Room3);
}
instance_destroy(other);