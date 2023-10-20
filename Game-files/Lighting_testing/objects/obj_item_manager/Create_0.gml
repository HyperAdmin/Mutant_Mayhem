depth = -9999;

global.font = fnt_main;

// item constructor
function create_item(_name, _desc, _spr, _effect) constructor
	{
	name = _name;
	description = _desc;
	sprite = _spr;
	effect = _effect;
	}

// create the items
global.item_list = 
{
	key :  new create_item(
		"Key", 
		"Its a key to open a door (Single Use)", 
		spr_key,
		function()
		{
			
			var _used = false;
			
			if instance_exists(oLock)
			{
				
			with(oLock)
				{
				if distance_to_object(obj_player) < 20 
					{
					instance_destroy();
					_used = true;
					}	
				}
			}
			// get rid of item
			if _used == true
			{
			array_delete(inv, selected_item, 1);
			}
		}
		),
		
	fire_ex : new create_item(
		"Fire Extinguisher",
		"Use to slow down enemies",
		spr_fire_ex,
		function(d)
			{
				//obj_item_fire_ex.duration -= 1;
				
				//part_particles_create(global.partSystem, 0 + obj_player.x,  0 + obj_player.y, global.ptBasic2, 1);	
				show_debug_message("Particle effect now active")
				obj_player.can_use = true
				//init2(obj_player.direction)
				array_delete(inv, selected_item, 1)
			}
		),
	
	lantern : new create_item(
		"Lantern",
		"Use as light source",
		spr_lantern,
		function()
			{
				//instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item_lantern);
				obj_light_test.Light_Range = 200;
				show_debug_message(obj_light_test.Light_Range)
				show_debug_message("Let there be light")
				array_delete(inv, selected_item, 1)
			}
		)
}

// create inventory
inv = array_create(0);
	
selected_item = -1;
	
// for drawing and mouse positions
sep = 16;
screen_bord = 16;