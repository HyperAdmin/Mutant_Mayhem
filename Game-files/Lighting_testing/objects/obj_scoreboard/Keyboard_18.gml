if keyboard_check_pressed(ord("U"))
{
	obj_player.stamina += 10000	
}
if keyboard_check_pressed(ord("L"))
{
	obj_light_test.Light_Range = 200;
	show_debug_message(obj_light_test.Light_Range)
	show_debug_message("Let there be light")
}