/*
	! Don't remove this file !
*/

ResetPlayer(playerid) // Clear player array
{
	SetPlayerTeam(this, NO_TEAM);
	for(new p_info:i; i < p_info; ++i) Player[this][i] = 0;
	PRES<this>;
	for(new i; i < 10; i++ ) SetPlayerSkillLevel(this, i, 1000);
	RemoveBuildingForPlayer(playerid, 16096, 120.5078, 1934.0313, 19.8281, 0.25);
}