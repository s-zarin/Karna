// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_player(){
	var _dis = distance_to_object(Obj_Player);
	
	//move_towards_point(Obj_Player.x, Obj_Player.y, 1)
	
	
	if calc_path_timer-- <= 0 {
		//reset timer for action	 
		calc_path_timer = calc_path_delay;
	}
	
	//boolean thats true if there is a path to the player
	found_player = mp_grid_path(global.mp_grid, path, x, y, Obj_Player.x, Obj_Player.y, choose(0, 1));
	//choose makes it so that the enemies sometimes move diagonally and sometimes don't
	
	if found_player {
		path_start(path, move_speed, path_action_stop, true);
	}
}
