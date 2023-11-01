if (!other.door_opened) {
	other.door_opened = true;
	show_debug_message("Player collided with the door");
	//audio_play_sound(snd_creaky_metal_door, 1, false);
} else {
	other.door_opened = false;	
	//audio_play_sound(snd_creaky_metal_door, 1, false);
}