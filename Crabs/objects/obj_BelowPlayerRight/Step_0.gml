/// @description Insert description here
// You can write your code in this editor
y = obj_Player.y+3
x = obj_Player.x 

//Put the colours here for what it should be stepping on
if(place_meeting(x,y,o_Sand)){
	StepColour = make_color_rgb(199, 174, 143)
}else if(place_meeting(x,y, obj_MovingObject)){
	StepColour = make_color_rgb(102, 45, 145)
}else{
	StepColour = noone	
}