

if(x < 0 || x > room_width || y < 0 || y > room_height) {
	instance_destroy(self);
}

//if(startVfx){
//	image_index = spr_bullet_bandit_vfx
//	alarm[0] = 5;
//	var vfxSize = random_range(0.5, 1.5);
//	image_xscale = vfxSize;
//	image_yscale = vfxSize;
//}

if(vfx){
	sprite_index = spr_bullet_bandit_vfx
	//alarm[1] = 10;
	destroyTimer += 1;
	var vfxSize = random_range(0.5, 1.5);
	image_xscale = vfxSize;
	image_yscale = vfxSize;
}

if(destroyTimer >= destroyNow){
	instance_destroy(self)
}