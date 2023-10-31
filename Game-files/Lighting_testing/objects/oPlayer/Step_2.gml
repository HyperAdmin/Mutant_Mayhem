// Cell where player is facing
var _len = TILESIZE, _dir = moveDirection;

var _facingCellX = x + lengthdir_x(_len, _dir);
var _facingCellY = y + lengthdir_y(_len, _dir);

// Check for NPC
var _npc = instance_position(_facingCellX, _facingCellY, oNPCParent);

if (_npc != noone && !instance_exists(oTextbox)) {
	_npc.showMessageIcon = true;	
	
	if (keyboard_check_pressed(vk_space)) {
		create_textbox(_npc.defaultDialogue);	
		
		// Make NPC face the player
		_npc.moveDirection = point_direction(_npc.x, _npc.y, x, y);
	}
}
