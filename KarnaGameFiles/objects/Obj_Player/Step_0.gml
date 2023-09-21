//keys 
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
shoot_key = mouse_check_button(mb_left)
aoe_key = mouse_check_button(mb_right)

if shootTimer > 0 {shootTimer--;}

//shooting arrows
if shoot_key && shootTimer <= 0{
	var _xOffset = lengthdir_x(weaponLength + weaponOffsetDist, aimDir)
	var _yOffset = lengthdir_y(weaponLength + weaponOffsetDist, aimDir)
	
	shootTimer = cooldown
	var _bltInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth -100, Obj_Arrow);
	with(_bltInst){
	//other allows work inside an object from another object
	dir = other.aimDir;
	} 
}



if blastTimer > 0 {blastTimer--;}
//Area of Effect Damage
if aoe_key && blastTimer <= 0{
	var _xOffset = lengthdir_x(weaponLength + weaponOffsetDist, aimDir)
	var _yOffset = lengthdir_y(weaponLength + weaponOffsetDist, aimDir)
	
	blastTimer = 30
	var _blastInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth -100, Obj_Blast);
	with(_blastInst){
	//other allows work inside an object from another object
	dir = other.aimDir;
	} 
}


//character movement
	var _horizKey = right_key - left_key;
	var _vertKey = down_key - up_key;
	moveDir = point_direction(0, 0, _horizKey, _vertKey);

	var _spd = 0;
	var _inputLvl = point_distance(0, 0, _horizKey, _vertKey);
	_spd = move_speed * _inputLvl;

//player aim
	centerY = y + centerYoffset;
	aimDir = point_direction(x, centerY, mouse_x, mouse_y);

//setting sprite
face = round(aimDir/90);
if face == 4 {
	face = 0;
}

xspd = lengthdir_x(_spd, moveDir)
yspd = lengthdir_y(_spd, moveDir);

//wall collision
if place_meeting(x + xspd, y, Obj_Wall) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, Obj_Wall) == true
{
	yspd = 0;
}

x += xspd;
y += yspd;

//dash 
//if dashTimer > 0 {dashTimer--;}

if dashTimer <= 0 && dashCoolDown > 0
{
	dashCoolDown --;
}

if dashCoolDown == 0
{
	dashTimer = 5;
}

if keyboard_check(ord("X")) && dashTimer > 0 
{
	//if dashTimer > 0
	//{	
		
		//sprite[0] = Spr_Arrow
		//sprite[1] = Spr_Arrow
		//sprite[2] = Spr_Arrow
		//sprite[3] = Spr_Arrow
		move_speed = 17
		dashTimer --;
		dashCoolDown += 8;
	//}
	
}
else
{
	move_speed = 3
	sprite[0] = Spr_Right
	sprite[3] = Spr_Player
	sprite[2] = Spr_Left
	sprite[1] = Spr_Up
}
if place_meeting(x, y, Obj_Boss_Arrow) 
{
	HP -= 10;
}
if place_meeting(x, y, Obj_Boss) 
{
	HP -= 50;
}

if place_meeting(x, y, Obj_Baddie_Parent) == true
{
	HP -= 10;
}
if HP <= 0
{

	sprite[0] = Spr_Dead
	sprite[3] = Spr_Dead
	sprite[2] = Spr_Dead
	sprite[1] = Spr_Dead
	xspd = 0
	yspd = 0
	//room_goto(Rm004);
	//x = 90;
	//y = 90;
}


if place_meeting(x, y, Obj_Coin)
{
	coinsCount += Obj_Coin.val
}



mask_index = sprite[3];
sprite_index = sprite[face];
depth = -bbox_bottom;