rollback_define_player(player_obj);

rollback_define_input({
	left: ord("A"),
	right: ord("D"),
	up: ord("W"),
	down: ord("S")
});

if (!rollback_join_game())
{
	rollback_create_game(2, false);
}

var p1 = instance_create_layer(0, 0, "Instances", player_obj);
p1.setup_player(0);

var p2 = instance_create_layer(0, 0, "Instances", player_obj);
p2.setup_player(1);
