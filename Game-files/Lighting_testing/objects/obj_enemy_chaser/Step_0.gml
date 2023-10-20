// Inherit the parent event
event_inherited();

if !global.paused
{
	if collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 0) || collision_line(x, y, obj_player.x, obj_player.y, obj_door, 1, 0)
	{
		visible = false	
	}
	else if collision_line(x, y, obj_player.x, obj_player.y, obj_crate, 1, 0)
	{
		visible = false
		mp_potential_step(obj_player.x, obj_player.y, en_speed + 2, 1);
	}
	else
	{
		visible = true
		// movement here
		mp_potential_step(obj_player.x, obj_player.y, en_speed, 1);
	}
}