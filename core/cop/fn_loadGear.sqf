/*
	File: fn_loadGear.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for loading cop saved gear loadout.
*/
private["_launcher","_allowedItems","_loadout","_primary","_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_handle","_append"];

_append = [_this,0,false] call BIS_fnc_param; //if append => dont strip down player

_loadout = cop_gear;
/*_allowedItems =
[
	"arifle_MXC_Black_F",
	"arifle_sdar_F",
	"arifle_MX_GL_Black_F",
	"muzzle_snds_H",
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_mag_Tracer",
	"SMG_02_F",
	"muzzle_snds_L",
	"30Rnd_9x21_Mag",
	"SMG_01_F",
	"muzzle_snds_acp",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01_tracer_green",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_Holosight",
	"optic_Holosight_smg",
	"optic_Hamr",
	"optic_MRCO",
	"hgun_Pistol_heavy_01_F",
	"11Rnd_45ACP_Mag",
	"optic_MRD",
	"arifle_MX_Black_F",
	"arifle_MX_SW_Black_F",
	"muzzle_snds_H_MG",
	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	"arifle_MXM_Black_F",
	"srifle_EBR_F",
	"20Rnd_762x51_Mag",
	"optic_Arco",
	"optic_SOS",
	"optic_NVS"
];*/
if(isNil "_loadout") exitWith {[] call life_fnc_copDefault;}; //Slot data doesn't exist
if(count _loadout == 0) exitWith {[] call life_fnc_copDefault;}; //Slot data doesn't exist
_primary = _loadout select 0;
//_launcher = "";
_handgun = _loadout select 1;
_magazines = _loadout select 2;
_uniform = _loadout select 3;
_vest = _loadout select 4;
_backpack = _loadout select 5;
_items = _loadout select 6;
_primitems = _loadout select 7;
_secitems = _loadout select 8;
_handgunitems = _loadout select 9;
_uitems = _loadout select 10;
_vitems = _loadout select 11;
_bitems = _loadout select 12;
_launcher = [_loadout,13,""] call BIS_fnc_param;
//This is to piss off cops :)
//NO, to piss off programmers!!! -.-
//if(!(_primary in _allowedItems)) then {_primary = ""};
//if(!(_handgun in _allowedItems)) then {_handgun = ""};

//Strip the unit down
if(!_append) then
{
	RemoveAllWeapons player;
	{player removeMagazine _x;} foreach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadGear player;
	{
		player unassignItem _x;
		player removeItem _x;
	} foreach (assignedItems player);
};

//Add the gear
if(_uniform != "") then {_handle = [_uniform,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_vest != "") then {_handle = [_vest,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_backpack != "") then {_handle = [_backpack,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
{
	_handle = [_x,true,false,false,false] spawn life_fnc_handleItem;
	waitUntil {scriptDone _handle};
} foreach _magazines;

if(_primary != "") then {[_primary,true,false,false,false] spawn life_fnc_handleItem;};
if(_launcher != "") then {[_launcher,true,false,false,false] spawn life_fnc_handleItem;};
if(_handgun != "") then {[_handgun,true,false,false,false] spawn life_fnc_handleItem;};

{_handle = [_x,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};} foreach _items;
{[_x,true,false,false,true] call life_fnc_handleItem;} foreach (_uitems);
{[_x,true,false,false,true] call life_fnc_handleItem;} foreach (_vitems);
{[_x,true,true,false,false] call life_fnc_handleItem;} foreach (_bitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_primitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_secitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_handgunitems);  

if(primaryWeapon player != "") then
{
	player selectWeapon (primaryWeapon player);
};

//systemChat str _primary;

//Update clothing ##86
[] spawn life_fnc_updateClothing;