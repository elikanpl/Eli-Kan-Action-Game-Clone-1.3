
//camera_set_view_pos(view_camera[0], cam_x, cam_y);

camera_set_view_pos(view_camera[0], x, y);

if(screenshake){
	camera_set_view_pos(view_camera[0], obj_fish.x - (camWidth + obj_fish.sprite_width)/2, obj_fish.y - (camHeight)/2);
	shakeTimer++;
	
	if(shakeTimer >= shakeLimit){
		screenshake = false;
		shakeTimer = 0;
	}
}