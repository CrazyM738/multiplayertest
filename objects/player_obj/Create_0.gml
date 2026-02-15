

//player spawning logic



function setup_player(_id)
{
    player_id = _id;

    if (player_id == 0)
    {
        x = 50;
        y = 50;
    }
    else if (player_id == 1)
    {
        x = 100;
        y = 100;
    }
}






//move_speed constant
move_speed = 15;

//set velocity to 0 when spawned
h_vel = 0;
v_vel = 0;


//max velocity value
max_vel = 30;




