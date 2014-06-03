/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Fischernetz auswerfen",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Collect Oil
		life_actions = life_actions + [player addAction["Öl fördern...",life_fnc_gatherOil,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "oil_1") < 75) OR (player distance (getMarkerPos "oil_2") < 75)) && ((vehicle player == player) OR (typeOf (vehicle player) == "B_Truck_01_fuel_F" && driver (vehicle player) == player)) && (life_carryWeight + (["oilu"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Gathers Diamonds
		life_actions = life_actions + [player addAction["Baue Diamanten ab...",life_fnc_gatherDiamond,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "diamond_1") < 75)) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["diamond"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Gathers Salt
		life_actions = life_actions + [player addAction["Baue Salz ab...",life_fnc_gatherSalt,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "salt_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["salt"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Gathers Copper
		life_actions = life_actions + [player addAction["Baue Kupfer ab...",life_fnc_gatherCopper,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "lead_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["copperore"] call life_fnc_itemWeight)) <= life_maxWeight ']];		
		//Gathers Iron
		life_actions = life_actions + [player addAction["Baue Eisen ab...",life_fnc_gatherIron,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "iron_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["ironore"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Gathers Gold
		life_actions = life_actions + [player addAction["Baue Gold ab...",life_fnc_gatherGold,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "gold_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["gold"] call life_fnc_itemWeight)) <= life_maxWeight ']];				
		//Gathers Sand
		life_actions = life_actions + [player addAction["Baue Sand ab...",life_fnc_gatherSand,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "sand_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["sand"] call life_fnc_itemWeight)) <= life_maxWeight ']];				
		//Gathers Rock
		life_actions = life_actions + [player addAction["Baue Steine ab...",life_fnc_gatherRock,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "rock_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["rock"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Gathers Coal
		life_actions = life_actions + [player addAction["Baue Kohle ab...",life_fnc_gatherCoal,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "coal_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["coal"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Gathers Silver
		life_actions = life_actions + [player addAction["Baue Silber ab...",life_fnc_gatherSilver,"",0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "silver_1")) < 75) && (typeOf (vehicle player) == "O_Truck_03_device_F" && driver (vehicle player) == player) && (life_carryWeight + (["silver"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		
		//Rob person
		life_actions = life_actions + [player addAction["Ausrauben",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		//##90
		life_actions = life_actions + [player addAction["Ausrauben",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && !(cursorTarget getVariable["robbed",FALSE]) && (cursorTarget getVariable["restrained",FALSE]) ']];
	};
};

//Action key link BUGGY //HACKFIX working?
life_actions = life_actions + [player addAction["Aktion ...",life_fnc_actionKeyHandler,"",0,false,true]];

life_actions = life_actions + [player addAction["<t color='#0000FF'>ADAC</t>",life_fnc_serviceTruck,"",99,false,false,"",' (["adac"] call life_fnc_permLevel) > 0 && (typeOf (vehicle player) == "C_Offroad_01_F") && ((vehicle player animationPhase "HideServices") == 0) && ((vehicle player) in life_vehicles) && (speed vehicle player) < 1 ']];

//##61 Cop license show
life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];

//##106
//BD MK1
life_actions = life_actions + [player addAction["<t color='#FF0000'>BD-MKI 'Fuel Killer' abfeuern</t>",life_fnc_fireBirdDown,"BDMK1",1,false,true,"",'(!(isNull (vehicle player))) && (vehicle player) isKindOf "Air" ']];
//BD MK2
//life_actions = life_actions + [player addAction["<t color='#FF0000'>BD-MKII 'Electrostatic' abfeuern</t>",life_fnc_fireBirdDown,"BDMK2",1,false,true,"",'(!(isNull (vehicle player))) && (vehicle player) isKindOf "Air" ']];

//##108
/*life_actions = life_actions + [player addAction["<t color='#00FF00'>Hände hoch</t>",life_fnc_putHandsUp,true,1,false,true,"",' playerSide == civilian && !life_hands_up ']];*/
/*life_actions = life_actions + [player addAction["<t color='#00FF00'>Hände runter</t>",life_fnc_putHandsUp,false,1,false,true,"",' playerSide == civilian && life_hands_up ']];*/

/*
	Undecided actions
life_actions = life_actions + [player addAction["Repair Vehicle ($500)",life_fnc_pumpRepair,"",999,false,false,"",
' vehicle player != player && (typeOf cursorTarget == "Land_fs_feed_F") && (vehicle player) distance cursorTarget < 6 ']];
life_actions = life_actions + [player addAction["Place Spike Strip",{if(!isNull life_spikestrip) then {detach life_spikeStrip; life_spikeStrip = ObjNull;};},"",999,false,false,"",'!isNull life_spikestrip']];
//Use Chemlights in hand
life_actions = life_actions + [player addAction["Chemlight (RED) in Hand",life_fnc_chemlightUse,"red",-1,false,false,"",
' isNil "life_chemlight" && "Chemlight_red" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Chemlight (YELLOW) in Hand",life_fnc_chemlightUse,"yellow",-1,false,false,"",
' isNil "life_chemlight" && "Chemlight_yellow" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Chemlight (GREEN) in Hand",life_fnc_chemlightUse,"green",-1,false,false,"",
' isNil "life_chemlight" && "Chemlight_green" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Chemlight (BLUE) in Hand",life_fnc_chemlightUse,"blue",-1,false,false,"",
' isNil "life_chemlight" && "Chemlight_blue" in (magazines player) && vehicle player == player ']];
//Drop Chemlight
life_actions = life_actions + [player addAction["Drop Chemlight",{if(isNil "life_chemlight") exitWith {};if(isNull life_chemlight) exitWith {};detach life_chemlight; life_chemlight = nil;},"",-1,false,false,"",'!isNil "life_chemlight" && !isNull life_chemlight && vehicle player == player ']];
//Custom Heal
life_actions = life_actions + [player addAction["<t color='#FF0000'>Heal Self</t>",life_fnc_heal,"",99,false,false,"",' vehicle player == player && (damage player) > 0.25 && ("FirstAidKit" in (items player)) && (currentWeapon player == "")']];
//Custom Repair
life_actions = life_actions + [player addAction["<t color='#FF0000'>Repair Vehicle</t>",life_fnc_repairTruck,"",99,false,false,"", ' vehicle player == player && !isNull cursorTarget && ((cursorTarget isKindOf "Car") OR (cursorTarget isKindOf "Air") OR (cursorTarget isKindOf "Ship")) && (damage cursorTarget) > 0.001 && ("ToolKit" in (backpackItems player)) && (player distance cursorTarget < ((boundingBox cursorTarget select 1) select 0) + 2) ']];
//Service Truck Stuff
life_actions = life_actions + [player addAction["<t color='#0000FF'>Service Nearest Car</t>",life_fnc_serviceTruck,"",99,false,false,"",' (typeOf (vehicle player) == "C_Offroad_01_F") && ((vehicle player animationPhase "HideServices") == 0) && ((vehicle player) in life_vehicles) && (speed vehicle player) < 1 ']];
life_actions = life_actions +
[player addAction["Push",life_fnc_pushVehicle,"",0,false,false,"",
'!isNull cursorTarget && player distance cursorTarget < 4.5 && cursorTarget isKindOf "Ship"']];
*/