light[| eLight.X] = obj_player.x;
light[| eLight.Y] = obj_player.y;

if (_l != Light_Range)
{
	light_remove_from_world(light);
	light_destroy(light);
	light = light_create_point(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity);
	sprite_index = spr_light_point;
	light_add_to_world(light);
	show_debug_message(_l)
	show_debug_message(Light_Range)
	_l = Light_Range;
}
