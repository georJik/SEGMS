/*
	!	Include only macro* (include server settings)
	!	Don't delete this file
*/

#define	this			playerid
#define	int%0(%1)		forward%0(%1); public%0(%1)
#define Nick(%0)    	Player[%0][nick]
#define Ip(%0)    		Player[%0][ip]
#define	CT				1
#define	T				2
#define	SPEC			3
#define	PVB<%0:%1>		(PVB[%0] & %1)
#define PXOR<%0:%1>  	PVB[%0] ^= %1
#define PNULL<%0:%1>  	PVB[%0] &= ~%1
#define PUP<%0:%1>  	PVB[%0] |= %1
#define PRES<%0>		PVB[%0] = BooleanPVar:0
#define	xyz				Float:x, Float:y, Float:z
#define SetPlayerAPos(%0,%1,%2,%3,%4)	SetPlayerPos(%0,%1,%2,%3), SetPlayerFacingAngle(%0,%4)
#define	SCM				SendClientMessage
#define	_weapid			Player[this][weapid]
#define	_ammo			Player[this][p_ammo]
#define	_money			Player[this][Money]

// Color list
#define	c_negative	0xAC7575FF
#define	c_good		0x03C03CFF
#define	c_default	0xFFAF00FF
#define	c_ct		0x009DFFFF
#define	c_t			0xCA0000FF

// Dialog name's
#define WEAPON_LIST			1
#define	WEAPON_LIST_BUY		2
#define	PISTOL				0
#define	SHOTGUNS			1
#define	MACHINE_GUNS		2
#define	EQUIPMEMT			3

#undef	MAX_PLAYERS