x = correctBandit.x;
y = correctBandit.y;

var _angle = 0;
_angle = point_direction(x, y, obj_fish.x, obj_fish.y)
image_angle = _angle
if(_angle < 90) {
	image_yscale = 1;
}

else if(_angle < 270) {
	image_yscale = -1;
}

else {
	image_yscale = 1;
}

if(shoot && canShoot){
	audio_play_sound(snd_gunfire_bandit, 2, 0);
	instance_create_layer(x, y, "Instances", obj_bullet_bandit);
	shoot = false;
	canShoot = false;
	alarm[0] = 120;
}