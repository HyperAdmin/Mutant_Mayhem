sprite_index = item.sprite;

//y = Wave(30, 70, 1, 0);
if can_collect_item
{
	if place_meeting(x, y, obj_player)
	{
		item_add(item);
		instance_destroy();
	}
}
if collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 0) || collision_line(x, y, obj_player.x, obj_player.y, obj_door, 1, 0)
{
	visible = false	
}
else
{
	visible = true	
}
