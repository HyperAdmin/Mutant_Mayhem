// helping nick
if !global.paused
{
	if collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 0) || collision_line(x, y, obj_player.x, obj_player.y, obj_door, 1, 0)
	{
		visible = false	
	}
	else
	{
		visible = true	
	}
	/*if x < obj_player.x
	{
		monster_sprite.image_angle = 180
	}
	if x > obj_player.x
	{
		monster_sprite.image_angle = 0
	} */
	if obj_player.shooting && distance_to_object(obj_player) < 40
	{
		if obj_enemy_parent.en_speed > 0
		{
			obj_enemy_parent.en_speed -= 1;
		}
	}
	else
	{
		if obj_enemy_parent.en_speed <= obj_enemy_parent.default_speed
		{
			obj_enemy_parent.en_speed += 0.005;
		}
	}
}
polygon = polygon_from_instance(id)