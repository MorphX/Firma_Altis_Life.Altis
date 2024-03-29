#include <macro.h>
/*
	File: fn_virt_sell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sell a virtual item to the store / shop
*/
private["_type","_index","_price","_var","_amount","_name","_marketprice"];
if((lbCurSel 2402) == -1) exitWith {};
_type = lbData[2402,(lbCurSel 2402)]; //SHORTNAME
_index = [_type,__GETC__(sell_array)] call fnc_index;
if(_index == -1) exitWith {};
_price = (__GETC__(sell_array) select _index) select 1;
_var = [_type,0] call life_fnc_varHandle; //LONGNAME


////////////##73

_marketprice = [_type] call life_fnc_marketGetSellPrice;

if(_marketprice != -1) then
{
	_price = _marketprice;
};

///////////

_amount = ctrlText 2405;
if(!([_amount] call fnc_isnumber)) exitWith {hint "Du hast keine aktuelle Anzahl angegeben.";};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {hint "Du hast nicht so viele Items zum Verkauf!"};

_price = (_price * _amount);
_name = [_var] call life_fnc_vartostr;
if(([false,_type,_amount] call life_fnc_handleInv)) then
{

	if(_type in life_illegal_item_shortnames) then
	{
		hint format["Du verkaufst %1 %2 für $%3. Du musst das Geld erst waschen lassen, um es benutzen zu können.",_amount,_name,[_price] call life_fnc_numberText];
		[true,"illegalmoney",_price] call life_fnc_handleInv;
	}
	else
	{
		hint format["Du verkaufst %1 %2 für $%3",_amount,_name,[_price] call life_fnc_numberText];
		life_cash = life_cash + _price;		
	};
	
	
	if(_marketprice != -1) then 
	{ 
		//##94
		[_type, _amount] spawn
		{
			sleep 120;
			[_this select 0,_this select 1] call life_fnc_marketSell;
		};
		[] call life_fnc_virt_update; 
	};
};

if(life_shop_type == "heroin") then
{
	private["_array","_ind","_val"];
	_array = life_shop_npc getVariable["sellers",[]];
	_ind = [getPlayerUID player,_array] call fnc_index;
	if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,name player,_val]];
		life_shop_npc setVariable["sellers",_array,true];
	}
		else
	{
		_array set[count _array,[getPlayerUID player,name player,_price]];
		life_shop_npc setVariable["sellers",_array,true];
	};
};