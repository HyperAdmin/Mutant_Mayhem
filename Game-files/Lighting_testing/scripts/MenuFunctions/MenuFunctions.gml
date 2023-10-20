// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.menu_sequence = -1;

function create_menu () {
	view_set_visible(0, false)
	view_set_visible(1, false)
	view_set_visible(2, true)
	global.menu_sequence = layer_sequence_create("UI", display_get_gui_width() / 2, display_get_gui_height() / 2, seq_start_screen)

	// Pause
	global.paused = true;
}

function close_menu () {
	view_set_visible(0, true)
	view_set_visible(1, false)
	view_set_visible(2, false)
	layer_sequence_destroy(global.menu_sequence);
	
	// Resume
	global.paused = false;
}