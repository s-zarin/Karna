/// @description Insert description here
// You can write your code in this editor

if state == 0 and start == 1{
	path_start(Path_BossStart,4,path_action_stop,1);
	state = 1;
}
if state == 1 and  path_position == 1{
	path_start(Path_BossStart2,2,path_action_stop,1);
	alarm[1] = 1
	state = 2
}
if state == 2 and path_position == 1{
	path_start(Path_BossPhase1,2,path_action_reverse,1);
	state = 3
}
if place_meeting(x, y, Obj_Arrow) == true
{
hp -= 5;	
}

if place_meeting(x, y, Obj_Arrow_End) == true
{
hp -= 25;	
}

if hp <= 0
{
	instance_create_layer(x, y, "Instances", Obj_Coin)
	instance_destroy();
}