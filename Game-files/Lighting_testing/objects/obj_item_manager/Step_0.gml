

// get selected item
selected_item = -1;

for (var i = 0; i < array_length(inv); i++) 
{
	var _xx = camera_get_view_x(view_camera[0]) + screen_bord;
	var _yy = camera_get_view_y(view_camera[0]) + screen_bord + sep*i - 6;
	
	if mouse_x > _xx - 6 && mouse_x < _xx + 16 && mouse_y > _yy && mouse_y < _yy + 16
	{
		selected_item = i;
	}
}

if selected_item != -1
{
	// use an item
	if mouse_check_button_pressed(mb_left)
	{
		inv[selected_item].effect();	
	}
}
