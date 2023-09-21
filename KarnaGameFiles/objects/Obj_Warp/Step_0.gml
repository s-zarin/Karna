if place_meeting(x, y, Obj_Player)
{
	room_goto(target_room);
	Obj_Player.x = target_loc_x;
	Obj_Player.y = target_loc_y;
}