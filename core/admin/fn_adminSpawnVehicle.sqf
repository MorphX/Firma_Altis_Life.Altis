/**
*	spawnVehicle()
*
*/

hint "Init Vehicle Spawn";

if((call life_adminlevel) < 1) exitWith {};

private["_unit", "_position", "_veh"];
disableSerialization;

_unit = lbData[1501,lbCurSel (1501)];

hint _unit;

if(isNil "_unit") exitWith {hint "a";};

//
_position = position player;

for "_i" from 5 to 1 step -1 do
{
	hint format ["In %1s wird das Fahrzeug spawnen.", _i];
	sleep 1;
};

//Spawn
_veh = _unit createVehicle (_position);

sleep 2;

hint format["Fahrzeug gespawnt!\nID: %1", _unit];




