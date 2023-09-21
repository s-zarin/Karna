//default sprite drawing
draw_self();

//setting location of weapon
var _xoffset = lengthdir_x(weaponOffsetDist, aimDir);
var _yoffset = lengthdir_y(weaponOffsetDist, aimDir);


var _weaponYscale = 1;

//makes sure sprite isn't upside down while rotating
if aimDir > 90 && aimDir < 270 {
	_weaponYscale = -1
}

//actually draws the sprite
draw_sprite_ext(Spr_Weapon, 0, x + _xoffset, centerY + _yoffset, 1, _weaponYscale, aimDir, c_white, 1, )