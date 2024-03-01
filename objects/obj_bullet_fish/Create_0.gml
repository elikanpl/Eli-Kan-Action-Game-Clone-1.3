inaccuracy = irandom_range(-5, 5) 
x = obj_fish.x + inaccuracy;
y = obj_fish.y + inaccuracy;

setMouseX = mouse_x;
setMouseY = mouse_y;
var mouse_to_player = point_direction(obj_fish.x, obj_fish.y, setMouseX, setMouseY);
//show_debug_message(mouse_to_player);
image_angle = mouse_to_player;
spd = 3;

image_speed = 1;
alarm[0] = 10;
//startVfx = true;
vfx = false;
active = true;
//x += lengthdir_x(spd, image_angle);
//y += lengthdir_y(spd, image_angle);

destroyTimer = 0;
destroyNow = 10;