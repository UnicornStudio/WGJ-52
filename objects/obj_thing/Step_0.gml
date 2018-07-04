/// @desc Do Stuff

if distance_to_object(obj_player) < 94 and instance_exists(obj_player){
	if !triggered{
	triggered = true
	obj_view.target = id
	obj_player.can_move = false
	obj_view.important = false
	
	var t = instance_create_layer(x,y-16,"Instances",obj_textbox)
	t.overhead = false
	for(var i = 0; i < array_length_1d(text); i++){
		t.page_text[i] = text[i]
	}
	}
}