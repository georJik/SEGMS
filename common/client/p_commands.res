/*
	! Don't remove this file !
*/

CMD:veh(playerid, params[])
{
	if(sscanf(params, "iii",params[0],params[1],params[2])) return SendClientMessage(playerid, -1, "‚ведите: /veh [id авто] [1 цвет] [2 цвет]");
	if(params[0] < 400 || params[0] > 611) return true;
	new v, xyz;
	GetPlayerPos(playerid, x,y,z);
	v = CreateVehicle(params[0], x,y,z, 0.0, params[1], params[2], 600);
	SetVehicleParamsEx(v, VEHICLE_PARAMS_ON, 0, 0, 0, 0, 0, 0);
	PutPlayerInVehicle(playerid,v,0);
	return true;
}

CMD:killme(playerid,params[])
{
	SetPlayerHealth(playerid, 0.1);
	SetPlayerVelocity(playerid, 0.0, 0.0, 100.0);
	return true;
}

CMD:gmx(playerid,params[])
{
	return GameModeExit();
}

CMD:changeteam(playerid,params[])
{
	TextDrawShowForPlayer(playerid, st_box), TextDrawShowForPlayer(playerid, st_box2), TextDrawShowForPlayer(playerid, st_pmd1),
	TextDrawShowForPlayer(playerid, st_pmd2), TextDrawShowForPlayer(playerid, st_st_t), TextDrawShowForPlayer(playerid, st_t_u),
	TextDrawShowForPlayer(playerid, st_t_b), TextDrawShowForPlayer(playerid, st_ct_u), TextDrawShowForPlayer(playerid, st_ct_b),
	TextDrawShowForPlayer(playerid, st_aa_u), TextDrawShowForPlayer(playerid, st_aa_b), TextDrawShowForPlayer(playerid, st_spec_u),
	TextDrawShowForPlayer(playerid, st_spec_b), TextDrawShowForPlayer(playerid, st_ltext1), TextDrawShowForPlayer(playerid, st_ub1),
	TextDrawShowForPlayer(playerid, st_ub2), TextDrawShowForPlayer(playerid, st_ub3), TextDrawShowForPlayer(playerid, st_ub4),
	TextDrawShowForPlayer(playerid, st_t), TextDrawShowForPlayer(playerid, st_ct), TextDrawShowForPlayer(playerid, st_aa),
	TextDrawShowForPlayer(playerid, st_spec), TextDrawShowForPlayer(playerid, st_ltext2), TextDrawShowForPlayer(playerid, st_ak);
	SelectTextDraw(this, 0xFFFFFF66);
	PUP<this:select_team>;
	return true;
}

CMD:money(playerid,params[])
{
	Player[this][Money] = 16000;
	return true;
}