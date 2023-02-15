var xDirection = gamepad_button_check(self.controllerId, gp_padr) - gamepad_button_check(self.controllerId, gp_padl);
var jump = gamepad_button_check(self.controllerId, gp_face1);
var onTheGround = place_meeting(x, y + 1, oWall);

if (xDirection != 0) image_xscale = xDirection;

if (xDirection != 0)
	self.movementDirectionX = xDirection;

xSpeed = xDirection * spd;
ySpeed+=3;

if (onTheGround) {
	if (jump) {
		ySpeed = jump_force - (1.2 * self.multiplicator);
	} else { sprite_index = spr_player1_idle; }
	if (self.supa_powa == true) {
		sprite_index = spr_player1_supapowa;
	}
	if (xDirection != 0) { sprite_index = spr_player1_run; }
} else {
	sprite_index = spr_player1_jump;
}

if (hit_state == true) {
	image_blend = c_red;
	sprite_index = spr_player_hit_1;
	hit_timer--;
	if (hit_timer == 0) {
		hit_state = false;
		hit_timer = 15;
		image_blend = self.color;
		sprite_index = spr_player1_idle;
	}
}

if (place_meeting(x + xSpeed, y, oWall)) { 
	while (!place_meeting(x + sign(xSpeed), y, oWall)) {
		x += sign(xSpeed);
	}
	xSpeed = 0; 
}

x += xSpeed;

if (self.multiplicator == 10) {
	self.supa_powa = true;
} else {
	self.supa_powa = false;
}

show_debug_message(self.supa_powa);

if (gamepad_button_check_pressed(self.controllerId, gp_face2)) {
	var beatAt = audio_sound_get_track_position(oGame.audio_instance) * 1000;
	beatAt %= 337;
	if (beatAt <= 50 or (200 - beatAt) < 50) {
		if (self.multiplicator < 10) {
			self.multiplicator += 1;
			fire_rate += (0.8 * self.multiplicator);
			spd += (0.2 * self.multiplicator);
		}
		show_debug_message(self.multiplicator);
		var _dir = point_direction(x, y, x + self.movementDirectionX, y)
		var _proj = instance_create_layer(x, y, "Instances", oBullet);
		_proj.speed = fire_rate;
		_proj.direction = _dir;
		_proj.image_angle += image_xscale;
		_proj.player = self;	
	} else {
		self.multiplicator = 1;
		fire_rate = 20;
		spd = 15;
	}
}

//if (gamepad_button_check(self.controllerId, gp_face2))
//{
//        var _proj = instance_create_layer(x, y, layer, oBullet);
        
//        _proj.speed = 10;
//        _proj.direction += xDirection;
//        _proj.image_angle += xDirection;
//        _proj.player = self;
//}

//image_angle = point_direction(x,y,mouse_x,mouse_y);

if (place_meeting(x, y + ySpeed, oWall)) { 
	
	while (!place_meeting(x, y + sign(ySpeed), oWall)) {
		y += sign(ySpeed);
	}
	ySpeed = 0; 
}

y += ySpeed;