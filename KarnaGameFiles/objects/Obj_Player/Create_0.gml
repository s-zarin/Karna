HP = 1500
moveDir = 0;
move_speed = 2;
xspd = 0;
yspd = 0;
coinsCount = 0;	

//sprite[RIGHT] = Spr_Right
//sprite[DOWN] = Spr_Player
//sprite[LEFT] = Spr_Left
//sprite[UP] = Spr_Up

//face = DOWN;

//setting location for weapon 
centerYoffset = -7; //y value offset
centerY = y + centerYoffset; //y value offset from center of player sprite

weaponOffsetDist = 4; //
aimDir = 0; //


face = 3;
sprite[0] = Spr_Right
sprite[3] = Spr_Player
sprite[2] = Spr_Left
sprite[1] = Spr_Up

//weapon info
shootTimer = 0; 
cooldown = 9; 

blastTimer = 0;

dashTimer = 10;
dashCoolDown = 0;

goldBow = Spr_Weapon;
weaponLength = sprite_get_bbox_right(goldBow) //- sprite_get_xoffset(goldBow)