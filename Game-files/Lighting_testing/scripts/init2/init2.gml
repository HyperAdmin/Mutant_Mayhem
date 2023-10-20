// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init2(d){
	var _ps = part_system_create();
	part_system_draw_order(_ps, true);

	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_sphere);
	part_type_size(_ptype1, 0.8, 1.1, 0, 0);
	part_type_scale(_ptype1, 0.4, 0.6);
	part_type_speed(_ptype1, 6, 8, 0, 0);
	part_type_direction(_ptype1, d - 5, d + 5, 0, 0);
	//part_type_gravity(_ptype1, 0, 270);
	part_type_orientation(_ptype1, 0, 0, 0, 0, false);
	part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(_ptype1, 0, 1, 0);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 10, 20);
	
	global.ptBasic2 = _ptype1
	
	//part_type_shape(_ptype1, pt)

	/*var _pemit1 = part_emitter_create(_ps);
	part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(_ps, _pemit1, _ptype1, 1);

	part_system_position(_ps, oPlayer.x, oPlayer.y); */

}