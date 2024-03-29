/*
	File: fn_vehicleShopBuy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Deleting it soon enough....
*/
private["_index","_veh","_color","_price","_sp","_kill","_dir","_name","_sv","_fed","_double"];
_kill = false;
_double = false;

switch(life_veh_shop) do
{
	//##33
	case "kart_shop":
	{
		_sp = getMarkerPos "kart_spawn";
		_dir = markerDir "kart_spawn";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};

	//##33
	case "civ_adac":
	{
		_sp = getMarkerPos "civ_adac_car_spawn";
		_dir = markerDir "civ_adac_car_spawn";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_adac_air":
	{
		_sp = getMarkerPos "civ_adac_air";
		_dir = markerDir "civ_adac_air";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};

	case "civ_car_1":
	{
		_sp = getMarkerPos "civ_car_1";
		_dir = markerDir "civ_car_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "civ_car_1_1";
			_dir = markerDir "civ_car_1_1";
			if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
		};
	};
	
	case "civ_car_2":
	{
		_sp = getMarkerPos "civ_car_2";
		_dir = markerDir "civ_car_2";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_car_3":
	{
		_sp = getMarkerPos "civ_car_3";
		_dir = markerDir "civ_car_3";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_car_4":
	{
		_sp = getMarkerPos "civ_car_4";
		_dir = markerDir "civ_car_4";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_car_1":
	{
		_sp = getMarkerPos "cop_car_1";
		_dir = markerDir "cop_car_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_car_2":
	{
		_sp = getMarkerPos "cop_car_2";
		_dir = markerDir "cop_car_2";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_car_3":
	{
		_sp = getMarkerPos "cop_car_3";
		_dir = markerDir "cop_car_3";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_car_4":
	{
		_sp = getMarkerPos "cop_car_4";
		_dir = markerDir "cop_car_4";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_car_5":
	{
		_sp = getMarkerPos "cop_car_5";
		_dir = markerDir "cop_car_5";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_ship_1":
	{
		//if(!license_civ_boat) exitWith {_kill = true;};
		_sp = getMarkerPos "civ_ship_1";
		_dir = markerDir "civ_ship_1";	
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_ship_2":
	{
		_sp = getMarkerPos "civ_ship_2";
		_dir = markerDir "civ_ship_2";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_ship_3":
	{
		_sp = getMarkerPos "civ_ship_3";
		_dir = markerDir "civ_ship_3";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_air_1":
	{
		_sp = getMarkerPos "civ_air_1";
		_dir = markerDir "civ_air_1";
		
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "civ_air_1_2";
			_dir = markerDir "civ_air_1_2";
			if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
		};
	};
	
	case "civ_air_2":
	{
		_sp = getMarkerPos "civ_air_2";
		_dir = markerDir "civ_air_2";
		
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "civ_car_2_2";
			_dir = markerDir "civ_car_2_2";
			if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
		};
	};
	
	case "civ_air_3":
	{
		_sp = getMarkerPos "civ_air_3";
		_dir = markerDir "civ_air_3";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_truck_1":
	{
		_sp = getMarkerPos "civ_truck_1";
		_dir = markerDir "civ_truck_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "civ_truck_2":
	{
		_sp = getMarkerPos "civ_truck_2";
		_dir = markerDir "civ_truck_2";
		
		if(count(nearestObjects[_sp,["Car","Ship","Air"],3]) > 0) then 
		{
			_sp = getMarkerPos "civ_truck_2_1";
			_dir = markerDir "civ_truck_2_1";
			if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
		};
	};
	
	case "cop_air_1":
	{
		_sp = getMarkerPos "cop_air_1";
		_dir = markerDir "cop_air_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_air_2":
	{
		_sp = getMarkerPos "cop_air_2";
		_dir = markerDir "cop_air_2";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_air_3":
	{
		_sp = getMarkerPos "cop_air_3";
		_dir = markerDir "cop_air_3";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_air_4":
	{
		_sp = getMarkerPos "cop_air_4";
		_dir = markerDir "cop_air_4";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_air_5":
	{
		_sp = getMarkerPos "cop_air_5";
		_dir = markerDir "cop_air_5";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};	
	
	case "reb_v_1":
	{
		_sp = getMarkerPos "reb_v_1";
		_dir = markerDir "reb_v_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
	
	case "cop_ship_1":
	{
		_sp = getMarkerPos "cop_ship_1";
		_dir = markerDir "cop_ship_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};
	};
};
_index = lbCurSel 2302;
_veh = lbData[2302,_index];
if(_veh == "B_G_Offroad_01_armed_F" OR _veh == "B_MRAP_01_hmg_F" OR _veh == "O_MRAP_02_hmg_F") exitWith {hint "Das Fahrzeug kann nicht permanent gekauft werden.";};
if(!([_veh] call life_fnc_vehShopLicenses)) exitWith {hint "Du besitzt nicht die benötigte Lizenz!"};
_color = lbValue[2303,(lbCurSel 2303)];
_price = lbValue[2302,(lbCurSel 2302)];

//if invalid, search for price in main config ##111
if(_price < 0) then
{	
	systemChat format ["Looking for %1 in main config!", _veh ];
	
	{
		if( _veh == ( _x select 0) ) exitWith
		{
			_price = (_x select 2);
			systemChat format ["Price found: %1", [_price] call life_fnc_numberText ];
			systemChat format ["=> Buy price is %1", [round(_price * 2)] call life_fnc_numberText ];
		};
	}
	foreach life_vehicle_config_new;
};

if(_price < 0) exitWith {hint "Ungültiger Preis";};
if(_price == 0) exitWith{hint "Kauf abgebrochen! Preis ist $0!";};


_price = round(_price * 2); //It's a permanent vehicle, add some bank to it!
if(life_cash < _price) exitWith {hint format["Du hast nicht genug Geld. Du benötigst %1", [_price] call life_fnc_numberText]; };
hint "Das kann ein zwei Sekunden dauern...";
sleep floor(random 3);

if(count(nearestObjects[_sp,["Car","Ship","Air"],4]) > 0) exitWith {hint "Ein Fahrzeug ist auf dem Spawnpunkt."};

_sv = false;

if(_veh == "serv_truck") then
{
	_name = "ADAC-Truck";
	_veh = "C_Offroad_01_F";
	_sv = true;
}
	else
{
	_name = getText(configFile >> "CfgVehicles" >> _veh >> "displayName");
};
hint format["Du hast einen %1 für $%2 gekauft.",_name,[_price] call life_fnc_numberText];
_vehicle = _veh createVehicle _sp;
_vehicle setVectorUp (surfaceNormal _sp);
_vehicle setPos _sp;
_vehicle setDir _dir;
_vehicle setVariable["trunk_in_use",false,true];
[_vehicle] call life_fnc_clearVehicleAmmo;

if(_sv) then
{
	[_vehicle,"service_truck",true] call life_fnc_vehicleAnimate;
	_color = 4;
};

_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,name player]],true];

life_vehicles set[count life_vehicles,_vehicle];
life_cash = life_cash - _price;

if(_veh in ["B_MRAP_01_F","C_SUV_01_F"] && playerSide == west) then {
	_vehicle setVariable["lights",false,true];
};

if(playerSide == west) then
{
	if(_veh == "C_Offroad_01_F") then
	{
		[_vehicle,"cop_offroad",true] call life_fnc_vehicleAnimate;
	};
};

[[_vehicle,_color],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;

[[(getPlayerUID player),playerSide,_vehicle,_color],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;

_vehicle lock 2;
if((life_veh_shop == "civ_air_1" OR life_veh_shop == "civ_air_2") && (typeOf _vehicle == "B_Heli_Light_01_F")) then
{
	[_vehicle,"civ_littlebird",true] call life_fnc_vehicleAnimate;
};

[_vehicle] call life_fnc_vehicleAfterSpawn; //Cleanups, ...

[1,false] call life_fnc_sessionHandle;