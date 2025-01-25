
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
