/*
	
	Simple	Counter-Strike	Gamemode
	
	Author: georJik ( George Panteleev )
	License type: Freedom MIT ( In the folder with the { server / github* } )
	
	2015	(c)		georJik
	
	Language in mode:	En / Ru*
	
	
	
	***
		Soon will be available English translation of the text in the game mode!
	***
		В скором времени будет доступен английский перевод текста в игровом моде!
	***
		Поскольку я хочу представить этот мод и иностранному комьюнити комментарии будут на английском языке.
		p.s: А русский и без них все разберет ;D
	***
	
	 
*/

#include <a_samp>
#include <a_mysql>
#include <sscanf2>
#include <foreach>
#include <streamer>
#include <zcmd>

/* Load components */

#include "../common/server/macro.res" // Macros
#include "../common/server/variables.res" // Server variables & Constants
#include "../common/server/interface.res" // GUI Interface

/* End load important part */ 


/* Load player-components */

#include "../common/client/p_variables.res" // Player variables
#include "../common/client/p_functions.res" // Player functions
#include "../common/client/p_commands.res" // Player commands

/* End load player-components */

/* Server includes */
	#include "../common/server/functions.res" // Main server function
/* ESI */
