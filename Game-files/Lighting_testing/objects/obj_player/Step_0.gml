if !global.paused {
	if keyboard_check_pressed(ord("F"))
	{
		if !sprinting and stamina != 0
		{
			sprinting = true;	
			move_yspeed = 2
			move_xspeed = 2
			show_debug_message("Sprinting")
		}
		else if sprinting
		{
			sprinting = false;
			move_yspeed = 1;
			move_xspeed = 1;
			show_debug_message("Not sprinting")
		}
	}
	if stamina <= 0
	{
		stamina_recharge = true	
		sprinting = false
		move_yspeed = 1;
		move_xspeed = 1;
		show_debug_message("No stamina must walk")
	}
	if  !keyboard_check(ord("A")) and !keyboard_check(ord("S")) and !keyboard_check(ord("W")) and !keyboard_check(ord("D"))
	{
		stamina_recharge = true
		
		if stamina_recharge
		{
			if stamina <= 100
			{
				stamina += .5;
				//show_debug_message("Recharging")
			}
			else
			{
				stamina_recharge = false;	
			}
		}
	}
	if !keyboard_check(vk_space)
	{
		if keyboard_check(ord("A")) and !instance_place(x-move_xspeed, y, obj_wall) and !instance_place(x-move_xspeed, y, obj_crate) and !instance_place(x-move_xspeed, y, obj_wall_tiles)  and !instance_place(x-move_xspeed, y, obj_office_chairs)  and !instance_place(x-move_xspeed, y, obj_interact_block){
			if sprinting
			{
				stamina -= .2;
			}
			sprite_index = spr_player_sprint
			x += -move_xspeed
			image_xscale = -0.15;
			//init2(180)
			// left animation || image_xscale = -1 right animation
			
		}	
		if keyboard_check(ord("D"))  and !instance_place(x+move_xspeed, y, obj_wall) and !instance_place(x+move_xspeed, y, obj_crate) and !instance_place(x+move_xspeed, y, obj_wall_tiles)  and !instance_place(x+move_xspeed, y, obj_office_chairs)  and !instance_place(x+move_xspeed, y, obj_interact_block) {
			if sprinting
			{
				stamina -= .2;
			}
			sprite_index = spr_player_sprint
			x += move_xspeed
			image_xscale = 0.15;
			//init2(0)
			// right animation
		}

		if keyboard_check(ord("W")) and !instance_place(x, y-move_yspeed, obj_wall) and !instance_place(x, y-move_yspeed, obj_crate)  and !instance_place(x, y-move_yspeed, obj_wall_tiles)  and !instance_place(x, y-move_yspeed, obj_office_chairs) and !instance_place(x, y-move_yspeed, obj_interact_block){
			if sprinting
			{
				stamina -= .2;
				sprite_index = spr_player_sprint
			}
			else
			{
				sprite_index = spr_player_walk_up
			}
			y += -move_yspeed	
			//init2(90)
			
			// up animation
			
		}
		if keyboard_check(ord("S")) and !instance_place(x, y+move_yspeed, obj_wall) and !instance_place(x, y+move_yspeed, obj_crate)  and !instance_place(x, y+move_yspeed, obj_wall_tiles)  and !instance_place(x, y+move_yspeed, obj_office_chairs) and !instance_place(x, y+move_yspeed, obj_interact_block) {
			if sprinting
			{
				stamina -= .2;
				sprite_index = spr_player_sprint
			}
			else 
			{
				sprite_index = spr_player_walk_down	
			}
			y += move_yspeed	
			//init2(-90)
			// down animation
		}
		if !keyboard_check(ord("A")) and !keyboard_check(ord("S")) and !keyboard_check(ord("W")) and !keyboard_check(ord("D"))
		{
			sprite_index = spr_player_idle
		}	
	}
}

if can_use
{
	if keyboard_check(vk_space) 
	{
		audio_play_sound(snd_fireExtinguisher, 3, true)
		shooting = true
		if obj_item_fire_ex.duration >= 0 
		{
			draw_sprite(spr_fire_ex, 0, x, y)
			part_particles_create(global.partSystem, x, y, global.ptBasic2, 1);
			//obj_item_fire_ex.duration -= 1;
		}
		else
		{
			can_use = false;
			
		}
	}
	else
	{
		shooting = false	
		audio_stop_sound(snd_fireExtinguisher)
	}
}




