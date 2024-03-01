//gun shoots
if(cooldown = false) {
	//plays bullet sound
	audio_play_sound(snd_gunfire_fish, 1, 0);
	
	instance_create_layer(x, y, "Instances", obj_bullet_fish)
	
	//player does not shoot every frame
	cooldown = true;
	alarm[0] = 15;
}