sprite_index = item.sprite;

if place_meeting(x, y, obj_player)
{
	if can_collect 
	{
	item_add(item);
	image_alpha = 0;
	can_collect = false
	}
}
if collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 0) || collision_line(x, y, obj_player.x, obj_player.y, obj_door, 1, 0)
{
	visible = false	
}
else
{
	visible = true;
}