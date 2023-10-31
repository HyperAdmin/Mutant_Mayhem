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
}
polygon = polygon_from_instance(id)