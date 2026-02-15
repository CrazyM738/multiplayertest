

//controls

if (rollback_is_game_running())
{
    input = rollback_get_input();
}
else
{
    return; // do nothing until match starts
}





//up = input.(ord("W"));
//down = input.(ord("S"));
//left = input.(ord("A"));
//right = input.(ord("D"));



//left acceleration
if (input.left)
{
	h_vel -= move_speed;	
}

//left deceleration
if (!input.left && h_vel < 0)
{
	h_vel += move_speed;	
}



//right acelleration
if (input.right)
{
	h_vel += move_speed;	
}

if (!input.right && h_vel > 0)
{
	h_vel -= move_speed;	
}



//up acceleration
if (input.up)
{
	v_vel -= move_speed;
}

//up decelleration
if (!input.up && v_vel < 0)
{
	v_vel += move_speed;	
}

//down acceleration
if (input.down)
{
	v_vel += move_speed;	
}

if (!input.down && v_vel > 0)
{
	v_vel -= move_speed;	
}








//correct max velocity
if (h_vel > 0 && h_vel > max_vel)
{
	h_vel = max_vel;	
}

if (h_vel < 0 && h_vel < max_vel * -1)
{
	h_vel = max_vel * -1;	
}

if (v_vel > 0 && v_vel > max_vel)
{
	v_vel = max_vel;	
}

if (v_vel < 0 && v_vel < max_vel * -1)
{
	v_vel = max_vel * -1;	
}




x += h_vel;
y += v_vel;



