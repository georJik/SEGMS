/*
	!	Don't include GUI's variable 
	!	Include only variables* & constants
	!	Don't delete this file
*/

const				  // Constants
	MAX_PLAYERS = 50, // The max value players on the server*
	SERVER_RATE	= 500, // The value of time update server ( milsec )
	CLIENT_RATE = 250;
	
new
	_check[3], // Var's
	r_timer,
	time_round[10],
	cur_time, h_s, m_t, s_s,
	//areas
	buy_ct, buy_t;