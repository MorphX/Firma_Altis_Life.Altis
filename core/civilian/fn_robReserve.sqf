/*
	File: fn_robReserve.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for robbing the federal reserve.
*/
private["_vault","_funds","_timer","_toFar"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = [_this,1,-1,[0]] call BIS_fnc_param;
_toFar = false;

if (count playableUnits < 10) then
{
	_funds = 1000000;
} else {
		_funds = count playableUnits * 150000;
	};
	
_cops = (west countSide playableUnits);
if(_cops < 6) exitWith{[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Nicht genügend Polizisten online!";};
	
if(isNull _vault OR _funds == -1) exitWith {}; //Bad data
if(player distance _vault > 25) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Du musst in der Nähe des Tresors bleiben! (25m)!"};

//if(_funds < 200000) exitWith{[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Die Zentralbank hat zu wenig Geld...";};

_timer = time + (15 * 60); //Default timer is 10 minutes to rob.
titleText["Knacke den Tresor...","PLAIN"];
[[2,"€ € € !!! DIE ZENTRALBANK WIRD AUSGERAUBT !!! € € €"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[_vault],"life_fnc_bankalarmsound",nil,true] spawn life_fnc_MP;


while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 Minute(n)",round(round(_timer - time) / 60)]} else {format["%1 Sekunde(n)",round(_timer - time)]};
	hintSilent format["Du musst in der Nähe bleiben 15m!\n\nVerbleibende Zeit:\n %1\n\nDistanz: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 15) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
};

switch(true) do
{
	case (_toFar):
	{
		hint "Sie sind zu weit von dem Safe entfernt, der Raub ist gescheitert!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "Sie sind gestorben, der Raub ist gescheitert.";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "50000 Volt waren wohl etwas zu viel für dich. Der Überfall ist gescheitert!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["Du hast erfolgreich €%1 erbeutet\n\nAus Sicherheitsgründen kannst du dein Konto für 15 Minuten nicht verwenden",[_funds] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 900;
			life_use_atm = true;
		};
		life_cash = life_cash + _funds;
		[[_vault,1,_funds],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
};