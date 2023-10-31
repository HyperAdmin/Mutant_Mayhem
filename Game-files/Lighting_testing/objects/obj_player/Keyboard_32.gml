if can_use
{
	if keyboard_check(ord("A")) and !instance_place(x-move_xspeed, y, obj_wall) and !instance_place(x-move_xspeed, y, obj_crate){
		image_xscale = -.25
		init2(180)
		// left animation || image_xscale = -1 right animation
	}
	if keyboard_check(ord("D"))  and !instance_place(x+move_xspeed, y, obj_wall) and !instance_place(x+move_xspeed, y, obj_crate) {
		image_xscale = .25
		init2(0)
		// right animation
	}

	if keyboard_check(ord("W")) and !instance_place(x, y-move_yspeed, obj_wall) and !instance_place(x, y-move_yspeed, obj_crate){
		init2(90)
		// up animation
	}
	if keyboard_check(ord("S")) and !instance_place(x, y+move_yspeed, obj_wall) and !instance_place(x, y+move_yspeed, obj_crate) {	
		init2(-90)
		// down animation
	}	
}