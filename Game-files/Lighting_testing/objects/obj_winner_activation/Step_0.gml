if can_play_sound
{
	if distance_to_object(obj_player) <= 0
	{
		audio_stop_sound(snd_bossMusic);
		audio_play_sound(snd_winner, 4, true);
		can_play_sound = false
		global.paused = true
		create_winner_screen()
	}
}