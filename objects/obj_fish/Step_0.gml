//if(x >= (edgeBufferX + sprite_width/2) && x <= (room_width - edgeBufferX - sprite_width/2))
if(hit == false) {
	//moves left
	if(keyboard_check(ord("A")) && !place_meeting(x-collisionBuffer, y, obj_pillar) && x >= edgeBufferX + sprite_width/2)
	{
		x -= spd;
		sprite_index = spr_fish_walking;
		image_xscale = -1;
	}

	//moves right
	if(keyboard_check(ord("D")) && !place_meeting(x+collisionBuffer, y, obj_pillar) && x <= room_width - edgeBufferX - sprite_width/2)
	{
		x += spd;
		sprite_index = spr_fish_walking;
		image_xscale = 1;
	}
	
	//moves up
	if(keyboard_check(ord("W"))&& !place_meeting(x, y-collisionBuffer, obj_pillar) && y >= edgeBufferY + sprite_height/2)
	{
		y -= spd;
		sprite_index = spr_fish_walking;
	}

	//moves down
	if(keyboard_check(ord("S")) && !place_meeting(x, y+collisionBuffer, obj_pillar) && y <= room_height - edgeBufferY - sprite_height/2)
	{
		y += spd;
		sprite_index = spr_fish_walking;
	}

	if(!keyboard_check(ord("A")) && !keyboard_check(ord("D")) && !keyboard_check(ord("W")) && !keyboard_check(ord("A")))
	{
		sprite_index = spr_fish_idle;
	}
}
 
if(hit) {
	sprite_index = spr_fish_hit;
	if(image_index = 2) {
		sprite_index = spr_fish_idle;
		hit = false;
	}
}