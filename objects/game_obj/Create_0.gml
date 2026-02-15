rollback_define_player(player_obj);

if (!rollback_join_game())
{
	rollback_create_game(2,false);
}