x = obj_fish.x;
y = obj_fish.y;

var _angle = 0;
_angle = point_direction(x, y, mouse_x, mouse_y)
image_angle = _angle
if(_angle < 90) {
	image_yscale = 1;
	show_debug_message("hello")
}

else if(_angle < 270) {
	image_yscale = -1;
}

else {
	image_yscale = 1;
}

//show_debug_message(image_angle)
show_debug_message(_angle)