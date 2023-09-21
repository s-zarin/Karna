//
dir = 0;
spd = 5;
xspd = 0;
yspd = 0;

damage = 5;
range = 120;
owner = noone;
destroy = false;


//knockback_Time = 3;

function arrow_die() {
	//arrow is destroyed
	
	speed = 0;
	instance_change(Obj_Arrow_End, false);

}