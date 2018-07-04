/// @desc Draw
if overhead == true{
if keyboard_check_pressed(vk_enter){
	if page < array_length_1d(page_text)-1{
	count = 1
	wait = 0
	draw_str = ""
	page += 1
	}else{
	obj_view.target = obj_player
	obj_player.can_move = true
	obj_view.important = false	
	fade = "out"
	}
}

if wait > 0{
	wait -= 1
}else{
	if count - 1 != string_length(page_text[page]){
	wait = 1
	draw_str += string_char_at(page_text[page],count)
	count += 1
	}
}
if fade == "out"{
	if !fade_val <=0{
		fade_val -= 0.05
	}else{
		instance_destroy()	
	}
}else if fade == "in"{
	if !fade_val >= 1{
		fade_val += 0.05
	}else{
		fade = "off"	
	}
}else if fade == "off"{
	fade_val = lerp(fade_val,1,0.3)
}

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_font(fnt_text)
draw_set_color(c_white)
draw_set_alpha(fade_val)
draw_text_outline_ext(x,y,draw_str,10,140)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
}