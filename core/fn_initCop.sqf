#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

//if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then 
//{
	if((__GETC__(life_coplevel) <= 0) && (__GETC__(life_adminlevel) <= 0)) exitWith 
	{
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
//};

//[] call life_fnc_spawnMenu;
//HOUSE RESPAWN
[[player], "HOUSE_fnc_requestSpawnMenu", false, false] spawn life_fnc_MP;

hint "Frage Datenbank an ...";

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

hint "Spieler gespawnt!";
titleText ["", "BLACK FADED", 9];
titleText ["Altis Life RPG v3.1.2 (Die Firma Edition)", "BLACK IN", 6];