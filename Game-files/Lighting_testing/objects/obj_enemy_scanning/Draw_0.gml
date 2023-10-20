draw_self();

if(is_debug)
{
	var add_angle = 5; // 5 degrees
	var angle_dir = 1; // -1, 1
	var dir = image_angle;
}

if(see_player)
{	
	draw_sprite(spr_explamation, 0, x, y - 34);
}