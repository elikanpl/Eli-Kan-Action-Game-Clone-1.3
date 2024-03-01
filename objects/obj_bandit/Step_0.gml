


if(obj_fish.x >= x) {
	image_xscale = 1;
}
		
else {
	image_xscale = -1;
}
		
switch state {
	case enemyState.idle:
		var _distance = point_distance(x, y, obj_fish.x, obj_fish.y);
		if(_distance < far && alive) {
			state = enemyState.shooting;
		}
		//if(_distance < close) {
		//	state = enemyState.chasing
		//}
		if(alive){
			sprite_index = spr_bandit_idle;
		}
	break;
		
	case enemyState.chasing:
		var _distance = point_distance(x, y, obj_fish.x, obj_fish.y);
		var _gun = instance_nearest(x, y, obj_gun_bandit)
		//if(_distance > far){
		//	state = enemyState.idle;
		//}
		if(_distance > close && alive){
			state = enemyState.shooting;
		}
		
		if(_distance <= tooclose && alive){
			state = enemyState.runaway;
		}
		
		var vector_to_player = point_direction(x, y, obj_fish.x, obj_fish.y);
		if(alive){
			x += lengthdir_x(spd, vector_to_player);
			y += lengthdir_y(spd, vector_to_player);
			_gun.shoot = true;
			sprite_index = spr_bandit_walking;
		}
	break;
	
	case enemyState.shooting:
		var _distance = point_distance(x, y, obj_fish.x, obj_fish.y);
		if(alive){
			var _gun = instance_nearest(x, y, obj_gun_bandit)
			sprite_index = spr_bandit_idle;
			_gun.shoot = true;
			_gun = 0
		}
		if(_distance > far && alive){
			state = enemyState.idle;
		}
		if (_distance < close && alive){
			state = enemyState.chasing;
		}
	break;
	
	case enemyState.runaway:
		var vector_to_player = point_direction(x, y, obj_fish.x, obj_fish.y);
		if(alive){
			x -= lengthdir_x(spd, vector_to_player);
			y -= lengthdir_y(spd, vector_to_player);
			sprite_index = spr_bandit_walking;
		}
		var _distance = point_distance(x, y, obj_fish.x, obj_fish.y);
		if(_distance > close && alive){
			state = enemyState.shooting;
		}
	break;
		
	case enemyState.death:
		//var _gun = instance_nearest(x, y, obj_gun_bandit)
		//instance_destroy(_gun)
		image_speed = 0.8;
		sprite_index = spr_bandit_dead
		alive = false;
		deadX = x;
		deadY = y;
		//state = enemyState.deactivated;
		deactivated = true;
	break;
	
	case enemyState.deactivated:
		image_speed = 0;
		image_index = 2;
	break;
}

if(deactivated){
	deadTimer++;
	
	if(deadTimer >= deadLimit){
		//var _bandit = instance_nearest(x, y, obj_gun_bandit)
		//instance_create_layer(deadX, deadY, "Instances", obj_bandit_dead)
		//instance_destroy(id)
		
		image_speed = 0;
		image_index = 5;
	}
}

if(alive){
	if(hurt){
		var vector_to_player = point_direction(x, y, obj_fish.x, obj_fish.y);
		x -= lengthdir_x(knockback, vector_to_player);
		y -= lengthdir_y(knockback, vector_to_player);
		//instance_nearest(x, y, ob 
		sprite_index = spr_bandit_hurt
		hurt = false;
		alarm[0] = 15;
	}

	//when following the player, the image rotates around
	//var vector_to_player = point_direction(x, y, obj_fish.x, obj_fish.y);
	//		show_debug_message(vector_to_player);
	//		image_angle = vector_to_player;
	//		x += lengthdir_x(spd, image_angle);
	//		y += lengthdir_y(spd, image_angle);

	if(hp <= 0){
		var _gun = instance_nearest(x, y, obj_gun_bandit)
		instance_destroy(_gun)
		sprite_index = spr_bandit_dead
		alive = false;
		state = enemyState.death;
	}
}