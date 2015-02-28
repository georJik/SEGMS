/*
	! Don't remove this file !
*/

enum p_info
{
	nick[MAX_PLAYER_NAME], ip[16],
	Kills, Deaths,
	Weapon[7], Ammo[7],
	Money,
	weapid, p_ammo
}

enum BooleanPVar:(<<= 1)
{
	select_team = 1
}

new Player[MAX_PLAYERS][p_info],
	BooleanPVar:PVB[MAX_PLAYERS];