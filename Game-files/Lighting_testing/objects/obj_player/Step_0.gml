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
	if stamina_recharge
	{
		if stamina <= 100 and !keyboard_check(ord("A")) and !keyboard_check(ord("S")) and !keyboard_check(ord("W")) and !keyboard_check(ord("D"))
		{
			stamina += 1;
			show_debug_message("Recharging")
		}
	}
	if !keyboard_check(vk_space) 
	{
		if keyboard_check(ord("A")) and !instance_place(x-move_xspeed, y, obj_wall) and !instance_place(x-move_xspeed, y, obj_crate){
			if sprinting
			{
				stamina -= .2;
			}
			x += -move_xspeed
			image_angle = 180
			init2(180)
			// left animation || image_xscale = -1 right animation
			
		}
		if keyboard_check(ord("D"))  and !instance_place(x+move_xspeed, y, obj_wall) and !instance_place(x+move_xspeed, y, obj_crate) {
			if sprinting
			{
				stamina -= .2;
			}
			x += move_xspeed
			image_angle = 0
			init2(0)
			// right animation
		}

		if keyboard_check(ord("W")) and !instance_place(x, y-move_yspeed, obj_wall) and !instance_place(x, y-move_yspeed, obj_crate){
			if sprinting
			{
				stamina -= .2;
			}
			y += -move_yspeed	
			init2(90)
			image_angle = 90
			// up animation
		}
		if keyboard_check(ord("S")) and !instance_place(x, y+move_yspeed, obj_wall) and !instance_place(x, y+move_yspeed, obj_crate) {
			if sprinting
			{
				stamina -= .2;
			}
			y += move_yspeed	
			init2(-90)
			image_angle = -90
			// down animation
		}
	}
}

if can_use
{
	if keyboard_check(vk_space) 
	{
		if obj_item_fire_ex.duration >= 0 
		{
			draw_sprite(spr_fire_ex, 0, x, y)
			part_particles_create(global.partSystem, x, y, global.ptBasic2, 1);
			obj_item_fire_ex.duration -= 1;
		
			if obj_enemy_parent.x <= x + 40 || obj_enemy_parent.x >= x - 40 || obj_enemy_parent.y >= y + 40 ||  obj_enemy_parent.y >= y - 40
			{
				obj_enemy_parent.en_speed *= 0.1;
				slowed = true
				alarm[0] = 50
				if (!slowed)
				{
					obj_enemy_parent.en_speed = obj_enemy_parent.default_speed;	
				}
			}
		}
		else
		{
			can_use = false;
			
		}
	}
}




