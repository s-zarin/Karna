if keyboard_check_pressed(ord("Z"))
{
	if p + 1 < array_length_1d(buddy)
	{
	p += 1;
	charCount = 0;
	}
	else
	{
		instance_destroy();
	}
}