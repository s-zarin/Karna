xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//collision
if place_meeting(x, y, Obj_Wall) 
{
	destroy = true;
}

if place_meeting(x, y, Obj_Arrow) 
{
	
	destroy = true;
}

timer --;

if timer <= 0
{
	destroy = true;
}
//out of range
if point_distance( xstart, ystart, x, y) > range 
{
	destroy = true;
}


x += xspd;
y += yspd;

if destroy
{
instance_create_layer(x,y, "Instances", Obj_Arrow_End)
instance_destroy();
}