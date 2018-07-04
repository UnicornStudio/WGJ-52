/// @desc Draw
draw_set_color(c_black)

bar = lerp(bar,(important*25),0.1)
draw_rectangle(0,0,display_get_gui_width(),bar,false)		
draw_rectangle(0,display_get_gui_height(),display_get_gui_width(),display_get_gui_height()-bar,false)	

draw_set_color(c_white)