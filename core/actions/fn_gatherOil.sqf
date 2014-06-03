/*
	File: fn_gatherOil.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers oil, needs to be revised and changed.
*/
private["_sum"];
_sum = ["oilu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0 && (vehicle player == player)) then
{
	life_action_in_use = true;
	titleText["Fördere Öl ...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"oilu",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast etwas Öl gefördert.","PLAIN"];
	};	
};

if(_sum > 0 && (typeOf (vehicle player) == "B_Truck_01_fuel_F")) then
{
	life_action_in_use = true;
	titleText["Fördere Öl...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	disableSerialization;

	_ctrl = "oilu";
	_num = 10;
	//[[vehicle player, "tempestwork",100],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
	titleText["Schaltet an...","PLAIN"]; sleep 5;
	_totalWeight = [vehicle player] call life_fnc_vehicleWeight;
	titleText["Fördere...","PLAIN"]; sleep 5;
	_itemWeight = ([_ctrl] call life_fnc_itemWeight) * _num;
	_veh_data = vehicle player getVariable ["Trunk",[[],0]];
	titleText["Befülle Tank...","PLAIN"]; sleep 5;
	_inv = _veh_data select 0;

	if(((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {hint "Tank ist voll!"};

	_index = [_ctrl,_inv] call fnc_index;
	if(_index == -1) then
	{
		_inv set[count _inv,[_ctrl,_num]];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	vehicle player setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	titleText["Auftrag erledigt.","PLAIN"];
};

life_action_in_use = false;