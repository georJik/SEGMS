/*
	! Don't remove this file !
*/

main();

public OnGameModeInit()
{
	SetGameModeText("Counter-Strike");
	LimitPlayerMarkerRadius(100.0);
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_STREAMED), ShowNameTags(true), SetNameTagDrawDistance(35.0), EnableStuntBonusForAll(false), DisableInteriorEnterExits();
	SetTeamCount(2);
	LoadGUI(), LoadMaps();
	SetTimer("update_server", SERVER_RATE, true);
	SetTimer("update_client", CLIENT_RATE, true);
	_check[0] = gettime()+1; // useful check's
	r_timer = gettime()+210;
	buy_ct = CreateDynamicCircle(267.2624,1820.7147, 10.0);
	buy_t = CreateDynamicCircle(114.6435,1920.2651, 10.0);
	return true;
}

public OnGameModeExit()
{
	return true;
}

public OnPlayerRequestClass(playerid, classid)
{
	return true;
}

public OnPlayerRequestSpawn(playerid)
{
	return false;
}

public OnPlayerConnect(playerid)
{
	ResetPlayer(this);
	SetPlayerColor(this, 0xFFFFFF00);
	GetPlayerName(this, Nick(this), MAX_PLAYER_NAME), GetPlayerIp(playerid, Ip(this), 16);
	SpawnPlayer(this);
	TextDrawShowForPlayer(playerid, st_box), TextDrawShowForPlayer(playerid, st_box2), TextDrawShowForPlayer(playerid, st_pmd1),
	TextDrawShowForPlayer(playerid, st_pmd2), TextDrawShowForPlayer(playerid, st_st_t), TextDrawShowForPlayer(playerid, st_t_u),
	TextDrawShowForPlayer(playerid, st_t_b), TextDrawShowForPlayer(playerid, st_ct_u), TextDrawShowForPlayer(playerid, st_ct_b),
	TextDrawShowForPlayer(playerid, st_aa_u), TextDrawShowForPlayer(playerid, st_aa_b), TextDrawShowForPlayer(playerid, st_spec_u),
	TextDrawShowForPlayer(playerid, st_spec_b), TextDrawShowForPlayer(playerid, st_ltext1), TextDrawShowForPlayer(playerid, st_ub1),
	TextDrawShowForPlayer(playerid, st_ub2), TextDrawShowForPlayer(playerid, st_ub3), TextDrawShowForPlayer(playerid, st_ub4),
	TextDrawShowForPlayer(playerid, st_t), TextDrawShowForPlayer(playerid, st_ct), TextDrawShowForPlayer(playerid, st_aa),
	TextDrawShowForPlayer(playerid, st_spec), TextDrawShowForPlayer(playerid, st_ltext2), TextDrawShowForPlayer(playerid, st_ak);
	SelectTextDraw(this, 0xFFFFFF66);
	SetPlayerCameraPos(playerid, 1951, 1400, 35), SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	Player[this][Money] = 800;
	PUP<this:select_team>;
	TextDrawShowForPlayer(playerid, s_timer);
	return true;
}

public OnPlayerDisconnect(playerid, reason)
{
	return true;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerSpawnPoint(this);
	return true;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(reason != 47 && reason != 53 && reason != 54)
	{
		_money += 300;
		TextDrawShowForPlayer(killerid, s_300), SetTimerEx("s_off", 3000, false, "i", killerid);
	}
	return true;
}

public OnPlayerText(playerid, text[])
{

	return false;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return false;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return true;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES)
	{
		if(m_t < 3 && s_s < 30) return SCM(playerid,c_negative,"Прошло более 20 секунд с момента старта раунда. Покупка невозможна.");
		if((IsPlayerInDynamicArea(this, buy_ct) && GetPlayerTeam(this) == CT) || (IsPlayerInDynamicArea(this, buy_t) && GetPlayerTeam(this) == T))
		{
			ShowPlayerDialog(playerid, WEAPON_LIST, DIALOG_STYLE_LIST, "{FFAF00}Покупка оружия","Пистолеты\nДробовики\nАвтоматы / Винтовки\nСнаряжение / Гранаты","Выбор","Отмена");
		}
	}
	return true;
}

public OnPlayerUpdate(playerid)
{
	return true;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	if(GetPlayerTeam(forplayerid) == GetPlayerTeam(this))
	{
		SetPlayerMarkerForPlayer(forplayerid, this, (GetPlayerTeam(this) == CT) ? (0x009DFF44) : (0xCA000044));
		SetPlayerMarkerForPlayer(this, forplayerid, (GetPlayerTeam(forplayerid) == CT) ? (0x009DFF44) : (0xCA000044));
	}
	return true;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return true;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case WEAPON_LIST:
		{
			if(response)
			{
				switch(listitem)
				{
					case PISTOL: ShowPlayerDialog(playerid, WEAPON_LIST_BUY, DIALOG_STYLE_LIST, "{22A7F0}Пистолеты", "{ffffff}Colt-45D\t{03c03c}400$\n{ffffff}Colt-45S\t{03c03c}450$\
					\n{ffffff}Desert Eagle\t{03c03c}700$\n{ffffff}Tec-9\t\t{03c03c}1100$","Купить","Отмена");
					case SHOTGUNS: ShowPlayerDialog(playerid, WEAPON_LIST_BUY, DIALOG_STYLE_LIST, "{22A7F0}Дробовики", "{ffffff}Shotgun-ST\t{03c03c}1500$\n{ffffff}Sawnoff\t{03c03c}2000$\
					\n{ffffff}Combat\t\t{03c03c}2500$","Купить","Отмена");
					case MACHINE_GUNS: ShowPlayerDialog(playerid, WEAPON_LIST_BUY, DIALOG_STYLE_LIST, "{22A7F0}Автоматы, Винтовки", "{ffffff}UZI\t{03c03c}1800$\n{ffffff}MP5\t{03c03c}2400$\
					\n{ffffff}AK-47\t{03c03c}3300$\n{ffffff}M4A1\t{03c03c}3300$\n{ffffff}Rifle\t{03c03c}5000$\n{ffffff}AWP-D\t{03c03c}6200$","Купить","Отмена");
					case EQUIPMEMT: ShowPlayerDialog(playerid, WEAPON_LIST_BUY, DIALOG_STYLE_LIST, "{22A7F0}Снаряжение, Гранаты", "{ffffff}Бронежилет\t\t{03c03c}200$\n{ffffff}Бронежилет + Каска\t{03c03c}300$\
					\n{ffffff}Осколочная граната\t{03c03c}400$\n{ffffff}Дымовая граната\t{03c03c}300$\n{ffffff}Коктейль Молотова\t{03c03c}200$","Купить","Отмена");
				}
				SetPVarInt(playerid, "_guntype", listitem);
			}
		}
		case WEAPON_LIST_BUY:
		{
			if(response)
			{
				switch(GetPVarInt(playerid, "_guntype"))
				{
					case PISTOL:
					{
						switch(listitem)
						{
							case 0: 
							{
								if(Player[this][Money] < 400) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 400, GiveWeapon(this, 22, 64, 2);
							}
							case 1: 
							{
								if(Player[this][Money] < 450) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 450, GiveWeapon(this, 23, 64, 2);
							}
							case 2: 
							{
								if(Player[this][Money] < 700) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 700, GiveWeapon(this, 24, 31, 2);
							}
							case 3: 
							{
								if(Player[this][Money] < 1100) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 1100, GiveWeapon(this, 32, 42, 4);
							}
						}
					}
					case SHOTGUNS:
					{
						switch(listitem)
						{
							case 0: 
							{
								if(Player[this][Money] < 1500) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 1500, GiveWeapon(this, 25, 42, 3);
							}
							case 1: 
							{
								if(Player[this][Money] < 2400) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 2400, GiveWeapon(this, 26, 36, 3);
							}
							case 2: 
							{
								if(Player[this][Money] < 2500) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 2500, GiveWeapon(this, 27, 36, 3);
							}
						}
					}
					case MACHINE_GUNS:
					{
						switch(listitem)
						{
							case 0: 
							{
								if(Player[this][Money] < 1800) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 1800, GiveWeapon(this, 28, 90, 4);
							}
							case 1: 
							{
								if(Player[this][Money] < 2000) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 2000, GiveWeapon(this, 29, 90, 4);
							}
							case 2: 
							{
								if(Player[this][Money] < 3300) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 3300, GiveWeapon(this, 30, 120, 5);
							}
							case 3: 
							{
								if(Player[this][Money] < 3300) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 3300, GiveWeapon(this, 31, 120, 5);
							}
							case 4: 
							{
								if(Player[this][Money] < 5000) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 5000, GiveWeapon(this, 33, 37, 6);
							}
							case 5: 
							{
								if(Player[this][Money] < 6200) return SCM(playerid, c_negative, "Для покупки этого оружия у вас недостаточно денег!");
								Player[this][Money] -= 6200, GiveWeapon(this, 34, 37, 6);
							}
						}
					}
				}
			}
		}
	}
	return true;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return true;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	if(PVB<this:select_team>)
	{
		if(clickedid == st_ct || clickedid == st_t || clickedid == st_aa)
		{
			if(clickedid != st_aa) SetPlayerTeam(playerid, (clickedid == st_ct) ? CT : T);
			else SetPlayerTeam(playerid, (random(T)+1));
			TextDrawHideForPlayer(playerid, st_box), TextDrawHideForPlayer(playerid, st_box2), TextDrawHideForPlayer(playerid, st_pmd1),
			TextDrawHideForPlayer(playerid, st_pmd2), TextDrawHideForPlayer(playerid, st_st_t), TextDrawHideForPlayer(playerid, st_t_u),
			TextDrawHideForPlayer(playerid, st_t_b), TextDrawHideForPlayer(playerid, st_ct_u), TextDrawHideForPlayer(playerid, st_ct_b),
			TextDrawHideForPlayer(playerid, st_aa_u), TextDrawHideForPlayer(playerid, st_aa_b), TextDrawHideForPlayer(playerid, st_spec_u),
			TextDrawHideForPlayer(playerid, st_spec_b), TextDrawHideForPlayer(playerid, st_ltext1), TextDrawHideForPlayer(playerid, st_ub1),
			TextDrawHideForPlayer(playerid, st_ub2), TextDrawHideForPlayer(playerid, st_ub3), TextDrawHideForPlayer(playerid, st_ub4),
			TextDrawHideForPlayer(playerid, st_t), TextDrawHideForPlayer(playerid, st_ct), TextDrawHideForPlayer(playerid, st_aa),
			TextDrawHideForPlayer(playerid, st_spec), TextDrawHideForPlayer(playerid, st_ltext2), TextDrawHideForPlayer(playerid, st_ak);
			CancelSelectTextDraw(playerid);
			PNULL<this:select_team>;
			SpawnPlayer(playerid);
			return true;
		}
		if(clickedid == Text:INVALID_TEXT_DRAW) return SelectTextDraw(this, 0xFFFFFF66);
	}
	return true;
}

public OnPlayerCommandPerformed(playerid, cmdtext[], success) return true;

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    SetPlayerPosFindZ(playerid, fX, fY, fZ+1.0); 
    return true;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
    if(weaponid != 4) Player[playerid][Ammo][GetWeaponSlot(weaponid)]--;
    return true;
}

public OnPlayerEnterDynamicArea(playerid, areaid)
{
	if((areaid == buy_ct && GetPlayerTeam(this) == CT) || (areaid == buy_t && GetPlayerTeam(this) == T)) 
	{
		SendClientMessage(playerid,c_good,"Вы находитесь в зоне покупки, для покупки оружия нажмите клавишу {ffffff}'Y'");
		TextDrawShowForPlayer(playerid, s_buyzone);
	}
	return true;
}

public OnPlayerLeaveDynamicArea(playerid, areaid)
{
	if((areaid == buy_ct && GetPlayerTeam(this) == CT) || (areaid == buy_t && GetPlayerTeam(this) == T)) TextDrawHideForPlayer(playerid, s_buyzone);
	return true;
}

int LoadMaps()
{
	/* Default Map */
	CreateDynamicObject(16096, 99.40568, 1920.82019, 19.04841,   0.00000, 0.00000, -179.04004);
	/* EODM */
	return true;
}

int SetPlayerSpawnPoint(playerid)
{
	if(GetPlayerTeam(this) == NO_TEAM)
	{
		SetPlayerPos(playerid, 0, 0, 0);
		return true;
	}
	switch(GetPlayerTeam(this))
	{
		case CT:
		{
			SetPlayerSkin(playerid, 285);
			GiveWeapon(this, 4, 1, 1), GiveWeapon(this, 23, 60, 2);
			SetPlayerAPos(playerid, 272.1273,1820.7979,17.6406,67.8690);
		}
		case T:
		{
			SetPlayerSkin(playerid, 125);
			GiveWeapon(this, 4, 1, 1), GiveWeapon(this, 22, 60, 2);
			SetPlayerPos(playerid, 112.3879,1920.5503,18.7270);
		}
	}
	SetCameraBehindPlayer(playerid);
	return true;
}

int update_server()
{
	if(_check[0] <= gettime() && _check[0] != 0)
	{
		if(r_timer <= gettime()) // Конец раунда. Если произойдет сбой / лаг ( <= )
		{
			TextDrawSetString(s_win,"Counter-Terrorist Win"), TextDrawShowForAll(s_win);
			SetTimerEx("s_off", 3000, false, "i", INVALID_PLAYER_ID);
			r_timer = 0;
		}
		cur_time = r_timer-gettime();
		h_s = floatround(cur_time / 3600);
		m_t = floatround((cur_time / 60) - (h_s * 60));
		s_s = floatround(cur_time - ((h_s * 3600) + (m_t * 60)));
	}
	return true;
}

int update_client()
{
	foreach(new playerid : Player)
	{
		for(new i; i < 13; i++)
		{
			GetPlayerWeaponData(playerid, i, _weapid, _ammo);
			switch(i)
			{
				case 1: if(_weapid != 4) GivePlayerWeapon(playerid, 4, 1);
				case 2..6: if(_weapid != Player[this][Weapon][i] || (_ammo < Player[this][Ammo][i] < _ammo)) GiveWeapon(playerid, Player[this][Weapon][i], Player[this][Ammo][i], i);
				default: if(_weapid != 0) ResetPlayerWeapons(playerid);
			}
		}
		if(Player[this][Money] != GetPlayerMoney(playerid)) ResetPlayerMoney(playerid), GivePlayerMoney(playerid,Player[this][Money]);
		if(Player[this][Money] > 16000) Player[this][Money] = 16000;
		format(time_round, sizeof(time_round), "%i:%02i", m_t, s_s);
		TextDrawSetString(s_timer, time_round);
		TextDrawHideForPlayer(this, s_timer), TextDrawShowForPlayer(this, s_timer);
	}
	return true;
}

int GetWeaponSlot(weaponid)
{
	new slot;
	switch(weaponid)
	{
		case 22..24: 	slot = 2;
		case 25..27: 	slot = 3;
		case 28,29,32: 	slot = 4;
		case 30,31:		slot = 5;
		case 33,34:		slot = 6;
	}
	return slot;
}

int s_off(playerid)
{
	if(playerid != INVALID_PLAYER_ID) TextDrawHideForPlayer(playerid, s_300);
	else TextDrawHideForAll(s_win);
	return true;
}

GiveWeapon(playerid, weaponid, ammo, slot)
{
	SetPlayerAmmo(playerid, slot, 0);
	Player[playerid][Weapon][slot] = weaponid, Player[playerid][Ammo][slot] = ammo;
	GivePlayerWeapon(playerid, weaponid, ammo);
}