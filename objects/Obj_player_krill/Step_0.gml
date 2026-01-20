
/// Movement via Arrow Keys

if (keyboard_check(vk_left))
{
    x = x - 5;
}
else if (keyboard_check(vk_right))
{
    x = x + 5;
}
else if (keyboard_check(vk_up))
{
    y = y - 5;
}
else if (keyboard_check(vk_down))
{
    y = y + 5;
}

//Movement via WASD

if keyboard_check(ord("D"))
{
	x = x + 5;
}
if keyboard_check(ord("A"))
{
	x = x - 5;
}
if keyboard_check(ord("S"))
{
	y = y + 5;
}
if keyboard_check(ord("W"))
{
	y = y - 5;
}
// Shooting Mechanic
if (mouse_check_button(mb_left) && can_shoot)
{
	can_shoot = false;
	
	alarm[0] = room_speed * 0.30;
	
	if mouse_check_button(mb_left)
	{
		instance_create_layer(x,y,"Bullet_Layer", Obj_bullet)
	}
}

// Shooting with Spacebar
if (keyboard_check(vk_space) && can_shoot)
{
	can_shoot = false;
	
	alarm[0] = room_speed * 0.30;
	
	if keyboard_check(vk_space)
	{
		instance_create_layer(x,y,"Bullet_Layer", Obj_bullet)
	}
}
//Announcer
if score = 10
{
	audio_play_sound(snd_Overkrill,0,0)
	score += 1
}
if score = 25
{
	audio_play_sound(snd_Ultrakrill,0,0)
	score += 1
}
if score = 50
{
	audio_play_sound(snd_Krilling_Spree,0,0)
	score += 1
}
if score = 75
{
	audio_play_sound(snd_Krilltacular,0,0)
	score += 1
}
if score = 100
{
	audio_play_sound(snd_Krillamanjaro,0,0)
	score += 1
}
if score = 150
{
	audio_play_sound(snd_Krilltastrophy,0,0)
	score += 1
}
if score = 200
{
	audio_play_sound(snd_One_in_a_krillion,0,0)
	score += 1
}