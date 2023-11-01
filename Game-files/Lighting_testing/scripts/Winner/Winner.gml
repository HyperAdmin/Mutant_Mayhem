// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.boss_sequence = -1

function create_boss_screen () {
	
	view_set_visible(0, false);
	view_set_visible(2, true);
	global.boss_sequence = layer_sequence_create("BossScene", room_width / 2, room_height / 2, seq_boss_found);

	// Pause
	global.paused = true;
}

function close_boss_screen () {
	
	view_set_visible(2, false);
	view_set_visible(0, true);
	//sequence_destroy(layer_sequence_get_sequence(global.boss_sequence));
	layer_sequence_destroy(global.boss_sequence);
	
	// Resume
	global.paused = false;
}