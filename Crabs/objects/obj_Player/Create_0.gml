
/// @Intionalizeing veriables
stop = false;
hsp = 0;
vsp = 0;
grv = 1;
walksp = 5;
bang = 0;
Vbang = 0;
stop = 0;
hp = 2;
hsp_move = 0;
visableness = true;
alarmActive = false;
RoomGo = rm_Level1_House;
TestSpeed = false;
JumpHight = -6
JumpWindUp = 0;
Jumping = false;
StopMovement = false;
//Spuished from
SpuishedOffOn = false
//wall bullshit
SquareX = 25 + hsp
collisionSquare = collision_rectangle(x-SquareX+50, y-20, x+SquareX, y+32, o_Wall, false, false)
Xline = 0
Draw_Enter = false
Yline = 0
//Wall slide stamina
stamina_max = 60
stamina_current = 0
//Seeing if you are talking to hermy
Talking = false
//Fire object bullshit
BeenHit = false
//Flash
flash = 0
//Platform moving speed
MoveBy = 2;
HittingWall = false
//JellyFish
MoveByY = 2;
TurnOffJump = false;
OnFloor = false;
//Diagonal movement
Yplus = 0;




//Create step partical effect
//Partical System
partStep_sys = part_system_create()
part_system_depth(partStep_sys, 0)

//Partical
PartStep = part_type_create();
part_type_shape(PartStep, pt_shape_square);
part_type_scale(PartStep, 0.05, 0.05);
part_type_size(PartStep, 0.1, 0.7, -0.005, 1);
part_type_color2(PartStep, c_yellow, c_white);
part_type_alpha2(PartStep, 1, 0.75);
part_type_speed(PartStep, 0.1, 0.5, 0, 0);
part_type_direction(PartStep, 0, 359, 0, 0);
part_type_gravity(PartStep, 0.01, -90);
part_type_life(PartStep, 0.4,room_speed);



//Partical Emitter
PartStep_emit = part_emitter_create(partStep_sys);

//Make bottom leg boxes
instance_create_layer(0,0,"Icons",obj_BelowPlayerLeft)
instance_create_layer(0,0, "Icons",obj_BelowPlayerRight)
instance_create_layer(0,0, "Icons",obj_SidePlayerRight)
instance_create_layer(0,0,"Icons",obj_SidePlayerLeft)
SlidingRight = false
SlidingLeft = false
obj_BelowPlayerLeft.visible = false
obj_BelowPlayerRight.visible = false
obj_SidePlayerLeft.visible = false
obj_SidePlayerRight.visible = false

//Add hat
instance_create_layer(obj_Player.x, obj_Player.y - 5, "Player", obj_Hat)

//Testing
//draw collision boxes
DrawBox = false;
HighestY = 999999;
PerfectPoint = false;
HighBang = 0;
HitVsp = 0;

//Damage against eel active
Eel_electric = false;

//Damdge against StingRay hit
StingRayHit = false;
StingRayId = noone;

//Claw
Claw = noone;
Claw_Y = 8;
Claw_X = 17;
Claw_State = spr_Claw_Idel;
with(instance_create_layer(x+17, y+8, "Player", obj_Claw)) {
	other.Claw = self.id;
}


//Pause
PauseLock = false;

//Flything through air partical effects
//Partical System
WandShotsys = part_system_create()
part_system_depth(WandShotsys, 0)

//Partical
WandShake = 1;
WandGravity = 0;
WandShotPartical = part_type_create();
part_type_sprite(WandShotPartical, spr_Chest_OpenPartical, false, true, false);
part_type_scale(WandShotPartical, 0.2, 0.2);
part_type_size(WandShotPartical, 0.1, 1, -0.0005, 0);
part_type_color1(WandShotPartical, c_white);
part_type_alpha2(WandShotPartical, 0.9, 0.6);
part_type_speed(WandShotPartical, 1, 1.5, 0, WandShake);
part_type_direction(WandShotPartical, -90,-90, 0, 10);
part_type_gravity(WandShotPartical, WandGravity, 90);
part_type_life(WandShotPartical, 60,180);
part_type_blend(WandShotPartical, true);


//Partical Emitter
WandShotPartical_emit = part_emitter_create(WandShotsys);

//part_emitter_region(WandShotsys, WandShotPartical_emit, self.x+17, self.x+30, self.y+15, self.y+15, spr_Chest_OpenPartical, ps_distr_gaussian)
//part_emitter_burst(WandShotsys, WandShotPartical_emit, WandShotPartical, 1);

//Flat things
AmFlat = false;