if distance_to_object(obj_player) < 2
{
	if !interacted
	{
		obj_item_key.visible = true
		obj_item_key.can_collect_item = true
		interacted = true
		show_debug_message("You've found the yellow key! (Try using it on a yellow lock)")
	}
}