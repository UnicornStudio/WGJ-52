/// @desc Move

var kr = keyboard_check(ord("D"))
var kl = keyboard_check(ord("A"))

var xinput = kr - kl

hspd = xinput*spd

if place_meeting(x+hspd,y,obj_collider){
	while(!place_meeting(x+sign(hspd),y,obj_collider)){
		x += sign(hspd)	
	}
	hspd = 0
}
if can_move{
x += hspd
}