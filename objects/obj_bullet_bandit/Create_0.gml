image_speed = 1;

inaccuracy = irandom_range(-5, 5) 
x += inaccuracy;
y += inaccuracy;

//image_speed = 1;
bandit = instance_nearest(x, y, obj_bandit)
banditX = bandit.x;
banditY = bandit.y;

var bandit_to_player = point_direction(banditX, banditY, obj_fish.x, obj_fish.y);
//show_debug_message(mouse_to_player);
image_angle = bandit_to_player;
spd = 1.5;

vfx = true;
alarm[1] = 30;