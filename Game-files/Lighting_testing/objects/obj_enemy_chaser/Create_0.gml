// Inherit the parent event
event_inherited();
if path_follower
{ 
	//en_speed = path_speed;
	path_start(path_monster, en_speed, path_action_restart, true);
	chase = false;
}
else
{
	chase = true	
}

