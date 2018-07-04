/// @desc Draw

if !overhead{
if keyboard_check_pressed(vk_enter){
	if page < array_length_1d(page_text)-1{
	count = 1
	wait = 0
	draw_str = ""
	page += 1
	}else{
	obj_view.target = obj_player
	obj_player.can_move = true
	instance_destroy()
	}
}

if wait > 0{
	wait -= 1
}else{
	if count - 1 != string_length(page_text[page]){
	if string_char_at(page_text[page],count) == "!"{
	wait = 10
	}else if string_char_at(page_text[page],count) == "?"{
	wait = 10
	}else if string_char_at(page_text[page],count) == "."{
	wait = 10
	}else if string_char_at(page_text[page],count) == ","{
	wait = 7	
	}else{
	wait = 1
	}
	
	draw_str += string_char_at(page_text[page],count)
	count += 1
	}
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_textbox)
draw_set_color(c_black)	
draw_rectangle(-6,display_get_gui_height()/1.5+5,display_get_gui_width(),display_get_gui_height()+1,false)
draw_set_color(c_white)	
draw_rectangle(-1,display_get_gui_height()/1.5,display_get_gui_width()-5,display_get_gui_height()-4,false)
draw_text_outline_ext(5,display_get_gui_height()/1.5+5,draw_str,12,300)
draw_set_color(c_white)	
}
