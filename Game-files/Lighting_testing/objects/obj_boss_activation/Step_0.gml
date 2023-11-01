if can_play_sound
{
	if distance_to_object(obj_player) < 1
	{
		audio_stop_sound(snd_main_music)
		audio_play_sound(snd_bossMusic, 4, true);
		can_play_sound = false
	}
}