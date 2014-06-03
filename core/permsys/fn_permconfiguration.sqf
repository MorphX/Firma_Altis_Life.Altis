#include <macro.h>

/*

	Game Unity Altis Life Permission System (perm)

*/

//Schema:
//   0        1         2            3            4                                5      6
// PERMID, PERMNAME, MAXLEVEL, RULECONFIG, MEMBER_CONDITIONS [cop,reb,donator], LOGO, LEVELNAMES

/*


	RULECONFIG:
	Array of leader rules
	
	[ [LEVEL, [RULESET+] ]

	RULESET = [LEADER, RANKUP, RANKDOWN, SELF, SUPER, VIEW, (CUSTOM PERMS)] 
	
	* SUPER ... CAN CONTROL RANK OF HIGHER LEVELS
	* SELF ... Can set own rank
	* VIEW ... can view list of players
	


*/

life_perms = [

	//Polizei-Verwaltung, will overwrite sessionReceive!
	["cop", "Altis Police Department", 7, [ 
	
		[1, ["VIEW"]],
		[2, ["VIEW","RESTRAIN"]],
		[3, ["VIEW","RESTRAIN"]],
		[4, ["VIEW","RESTRAIN"]],
		[5, ["VIEW","RESTRAIN"]],
		[6, ["VIEW","RESTRAIN"]],
		[7, ["LEADER", "RANKUP", "RANKDOWN", "SUPER", "VIEW","RESTRAIN"]]
	], 
	[], "textures\signs\apd_logo.paa",
	["Kein Mitglied","Rekrut", "Officer", "Sergeant","Lieutenant","Captain","Major","General"]], 
	
	//ADAC
	["adac", "ADAC", 3, [ 
		[0, ["VIEW"]],
		[1, ["VIEW","RESTRAIN"]],
		[2, ["VIEW","RESTRAIN"]],
		[3, ["LEADER", "RANKUP", "RANKDOWN", "VIEW","RESTRAIN"]]
	],  
	[], "images\ADAC_256.paa",
	["Kein Mitglied","ADAC-Rekrut", "ADAC-Mitarbeiter", "ADAC-Chef"]],
	
	//Supreme Commanders
	["sc", "Muster Permgang", 2, [ 
		[0, ["VIEW"]],
		[1, ["VIEW","RESTRAIN"]],
		[2, ["LEADER", "RANKUP", "RANKDOWN", "VIEW","RESTRAIN"]]
	],  
	[], "images\sc.paa",
	["Kein Mitglied","Mitglied", "Anführer"]]
	

];

life_dynperms = []; //Dynamic perms, loaded by database


///////////////////////////// Autoconfig
life_player_perms = []; //[PERMID, LEVEL]
life_dynperm_checkout_running = false;

__CONST__(life_perms,life_perms);

