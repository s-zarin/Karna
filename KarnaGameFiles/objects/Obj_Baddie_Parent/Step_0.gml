check_for_player();

//if place_meeting(x + move_speed, y, Obj_Wall) == true
//	{
//	move_speed = 0;
//	}
//if place_meeting(x, y + yspd, Obj_Wall) == true
//{
//	yspd = 0;
//}

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
if place_meeting(x, y, Obj_Player) == true
{
	if Obj_Player.HP <= 0 {
		room_goto(target_room);
		Obj_Player.x = target_loc_x;
		Obj_Player.y = target_loc_y;
	}
}