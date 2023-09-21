draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

//draw options
draw_set_font(Fnt_Karna);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++)
	{
		draw_text(x+top_border, y+top_border + side_border * i, option[i])
	}
	

