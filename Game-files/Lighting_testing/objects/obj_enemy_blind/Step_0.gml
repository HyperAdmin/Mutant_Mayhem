// Inherit the parent event
event_inherited();

if distance_to_object(obj_player) < range
{
	// movement
	image_speed = 5
	mp_potential_step(obj_player.x, obj_player.y, en_speed, 1)
}
else
{
	image_speed = 0
}
