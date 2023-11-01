// Inherit the parent event
event_inherited();

if !global.paused
{
	if distance_to_object(obj_player) < range
	{
		path_end()
		chase = true
	}
	if chase = true
	{
		if collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 0) || collision_line(x, y, obj_player.x, obj_player.y, obj_door, 1, 0)
		{
			visible = false	
		}
		else if collision_line(x, y, obj_player.x, obj_player.y, obj_crate, 1, 0)
		{
			visible = false
			mp_potential_step(obj_player.x, obj_player.y, en_speed + 2, false);
		}
		else
		{
			if distance_to_object(obj_player) < range
			{
				image_speed = 5
				visible = true	
				// movement here
				mp_potential_step(obj_player.x, obj_player.y, en_speed, false);
				if obj_player.x < x
				{
					image_xscale = -.2
				}
				else
				{
					image_xscale = .2	
				}
			}
			else
			{
				image_speed = 0	
			}
		}
	}
}