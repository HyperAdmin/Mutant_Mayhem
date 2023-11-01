//stamina
if instance_exists(obj_player)
{
draw_healthbar(obj_player.x - 20, obj_player.y - 20, obj_player.x + 20, obj_player.y - 25, obj_player.stamina, c_black, c_red, c_lime, 0, true, true)
//show_debug_message("Showing the Stamina Bar")
}