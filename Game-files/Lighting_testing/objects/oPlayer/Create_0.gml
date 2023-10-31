// Inherit the parent event
event_inherited();
global.hp = 100;
global.hpMax = 100;
global.mp = 10;
global.mpMax = 15;
global.strength = 6;

states = {
	idle: {
		left: s_Player_Idle_Left,
		right: s_Player_Idle_Right,
		up: s_Player_Idle_Up,
		down: s_Player_Idle_Down
	},
	walk: {
		left: s_Player_Walk_Left,
		right: s_Player_Walk_Right,
		up: s_Player_Walk_Up,
		down: s_Player_Walk_Down
	}
}

state = states.idle;

