image_speed = 0.3;

enum enemyState {
	idle = 0,
	chasing = 1,
	shooting = 2,
	death = 3,
	deactivated = 4,
	runaway = 5
}

state = enemyState.idle;

spd = 1.5;
knockback = 10;
close = 100;
tooclose = 50;
far = 150;

hp = 2;

alive = true;
hurt = false;
deactivated = false;
deadTimer = 0;
deadLimit = 15;
deadX = 0;
deadY = 0;

instance_create_layer(x, y, "Instances", obj_gun_bandit)

//alarm[2] = 45

//to be inserted in a draw event if necessary
//draw_self();
//if(hit1) {
//	draw_set_color(c_white)
//	hit1 = false;
//	alarm[0] = 5;
//}

//if(hit2) {
//	draw_set_color(c_black)
//	hit2 = false;
//	alarm[1] = 5;
//}

//if(hit3) {
	
//	hit3 = false;
//	draw_self();
//}