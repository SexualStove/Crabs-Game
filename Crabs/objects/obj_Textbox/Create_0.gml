/// @description Insert description here
// You can write your code in this editor
TestArray[0] = ""
Text = TestArray
page = 0;
IncrementStringAmount = 0;
HalfBoxWidth = sprite_get_width(spr_TextBox)/2
BoxWidth =  sprite_get_width(spr_TextBox)*5 
BoxHeight = sprite_get_height(spr_TextBox)/3


//For some reason gets it to stop having you press enter twice on the first go
keyboard_key_release(vk_enter)

//Instance who made it stuff
InstanceThatMadeIt = noone;
InstanceName = "TEST";