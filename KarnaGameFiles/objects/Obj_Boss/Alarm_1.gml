/// @description Insert description here
// You can write your code in this editor
var _bltInst = instance_create_depth(x , y, depth -100, Obj_Boss_Arrow);
with(_bltInst){
	//other allows work inside an object from another object
	_bltInst.dir = point_direction(x,y,Obj_Player.x,Obj_Player.y) - 5 + random(10);
	} 
alarm[1] = 50