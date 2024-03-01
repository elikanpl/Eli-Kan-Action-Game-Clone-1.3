

if(active){
	x += lengthdir_x(spd, image_angle);
	y += lengthdir_y(spd, image_angle);
}

//if(place_meeting(x, y, obj_pillar)) {
//	instance_destroy(self);
//}

if(place_meeting(x, y, obj_pillar)) {
	vfx = true;
	active = false;
}

if(place_meeting(x, y, obj_bandit)) {
	var correctBandit = instance_nearest(x, y, obj_bandit)
	correctBandit.hp -= 1;
	correctBandit.hurt = true;
	//vfx = true;
	//active = false;
	instance_destroy(self);
}