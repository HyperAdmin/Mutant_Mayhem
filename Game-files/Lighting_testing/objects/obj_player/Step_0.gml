if !global.paused {
	if !keyboard_check(vk_space) 
	{
		if keyboard_check(ord("A")) and !instance_place(x-move_xspeed, y, obj_wall) and !instance_place(x-move_xspeed, y, obj_crate){
			x += -move_xspeed
			image_xscale = -.5
			init2(180)
			// left animation || image_xscale = -1 right animation
		}
		if keyboard_check(ord("D"))  and !instance_place(x+move_xspeed, y, obj_wall) and !instance_place(x+move_xspeed, y, obj_crate) {
			x += move_xspeed
			image_xscale = .5
			init2(0)
			// right animation
		}

		if keyboard_check(ord("W")) and !instance_place(x, y-move_yspeed, obj_wall) and !instance_place(x, y-move_yspeed, obj_crate){
			y += -move_yspeed	
			init2(90)
			// up animation
		}
		if keyboard_check(ord("S")) and !instance_place(x, y+move_yspeed, obj_wall) and !instance_place(x, y+move_yspeed, obj_crate) {
			y += move_yspeed	
			init2(-90)
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




