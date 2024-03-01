x += lengthdir_x(spd, image_angle);
y += lengthdir_y(spd, image_angle);

if(place_meeting(x, y, obj_fish) || place_meeting(x, y, obj_pillar)){
	sprite_index = spr_bullet_bandit_vfx;
	image_speed = 1;
	alarm[0] = 5;
	vfx = true;
}

if(vfx){
	var vfxSize = random_range(0.5, 1.5);
	image_xscale = vfxSize;
	image_yscale = vfxSize;
	
}
