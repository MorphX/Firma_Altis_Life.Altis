#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

// ************************************
//
//NOTE: Preis auf -1 setzen, um Standardpreis von vehiclesCentralized zu nehmen
//
// ************************************


switch (_shop) do
{
//Kart-Shops
	case "kart_shop":
	{
		_return = 
		[
			["C_Kart_01_Blu_F",-1],
			["C_Kart_01_Fuel_F",-1],
			["C_Kart_01_Red_F",-1],
			["C_Kart_01_Vrana_F",-1]			
		];
	}; 
	
//ADAC-Shops
	case "civ_adac":
	{
		_return = 
		[
			["C_Offroad_01_F",15000],
			["B_Truck_01_mover_F",-1]
		];
	}; 
	
	case "civ_adac_air":
	{
		_return = 
		[
			["B_Heli_Light_01_F",-1]
		];
	}; 
	
//Civil-Shops	
	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",-1],
			["C_Hatchback_01_F",-1],
			["C_Offroad_01_F",-1],
			["C_SUV_01_F",-1],
			["C_Hatchback_01_sport_F",-1]
		];
	}; 
	
	case "civ_car_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",-1],
			["C_Hatchback_01_F",-1],
			["C_Offroad_01_F",-1],
			["C_SUV_01_F",-1],
			["C_Hatchback_01_sport_F",-1]
		];
	}; 
	
	case "civ_car_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",-1],
			["C_Hatchback_01_F",-1],
			["C_Offroad_01_F",-1],
			["C_SUV_01_F",-1],
			["C_Hatchback_01_sport_F",-1]
		];
	}; 
	
	case "civ_car_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",-1],
			["C_Hatchback_01_F",-1],
			["C_Offroad_01_F",-1],
			["C_SUV_01_F",-1],
			["C_Hatchback_01_sport_F",-1]			
		];
	}; 
	
//Truck-shops	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_transport_F",-1],
			["C_Van_01_box_F",-1],
			//["C_Van_01_fuel_F",-1],
			["I_Truck_02_transport_F",-1],
			["I_Truck_02_covered_F",-1],				
			//["O_Truck_02_fuel_F",-1],
			//["O_Truck_03_fuel_F",-1],
			["O_Truck_03_device_F",-1],
			["B_Truck_01_transport_F",-1],
			["B_Truck_01_covered_F",-1],
			["B_Truck_01_box_F",-1],
			["B_Truck_01_fuel_F",-1]		
		];	
	};
	
	case "civ_truck_2":
	{
		_return =
		[
			["C_Van_01_transport_F",-1],
			["C_Van_01_box_F",-1],
			//["C_Van_01_fuel_F",-1],
			["I_Truck_02_transport_F",-1],
			["I_Truck_02_covered_F",-1],				
			//["O_Truck_02_fuel_F",-1],
			//["O_Truck_03_fuel_F",-1],
			["O_Truck_03_device_F",-1],
			["B_Truck_01_transport_F",-1],
			["B_Truck_01_covered_F",-1],
			["B_Truck_01_box_F",-1],		
			["B_Truck_01_fuel_F",-1]	
		];	
	};

//Rebell-Shop	
	case "reb_v_1":
	{
		if(license_civ_rebel) then
		{
			_return =
			[
				["B_Quadbike_01_F",-1],
				["B_G_Offroad_01_F",-1],
				["O_Truck_03_transport_F",-1],
				["O_Truck_03_covered_F",-1],
				["O_MRAP_02_F",-1],
				["I_MRAP_03_F",-1],
				["B_G_Offroad_01_armed_F",-1],
				["O_MRAP_02_hmg_F",-1],
				["B_Heli_Light_01_F",-1],
				["O_Heli_Light_02_unarmed_F",-1],
				["I_Heli_Transport_02_F",-1]
			];
		};
	};
	
//Cop-Shops	
	case "cop_car_1":
	{
		_return set[count _return,		
		["B_Quadbike_01_F",2500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",20000]];		
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",35000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];		
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",100000]];		
		};		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",175000]];		
			_return set[count _return,
			["B_MRAP_01_hmg_F",250000]];		
		};		
	};
	
	case "cop_car_2":
	{
		_return set[count _return,		
		["B_Quadbike_01_F",2500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",20000]];		
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",35000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];		
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",100000]];		
		};		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",175000]];		
			_return set[count _return,
			["B_MRAP_01_hmg_F",250000]];		
		};		
	};
	
	case "cop_car_3":
	{
		_return set[count _return,		
		["B_Quadbike_01_F",2500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",20000]];		
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",35000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];		
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",100000]];		
		};		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",175000]];		
			_return set[count _return,
			["B_MRAP_01_hmg_F",250000]];		
		};		
	};
	
	case "cop_car_4":
	{
		_return set[count _return,		
		["B_Quadbike_01_F",2500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",20000]];		
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",35000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];		
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",100000]];		
		};		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",175000]];		
			_return set[count _return,
			["B_MRAP_01_hmg_F",250000]];		
		};		
	};
	
	case "cop_car_5":
	{
		_return set[count _return,		
		["B_Quadbike_01_F",2500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",20000]];		
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",35000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];		
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",100000]];		
		};		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",175000]];		
			_return set[count _return,
			["B_MRAP_01_hmg_F",250000]];		
		};		
	};

//Civil-Air-Shops	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",-1],
			["O_Heli_Light_02_unarmed_F",-1],
			["I_Heli_Transport_02_F",-1]
		];
	};
	
	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",-1],
			["O_Heli_Light_02_unarmed_F",-1],
			["I_Heli_Transport_02_F",-1]
		];
	};
	
	case "civ_air_3":
	{
		_return =
		[
			["B_Heli_Light_01_F",-1],
			["O_Heli_Light_02_unarmed_F",-1],
			["I_Heli_Transport_02_F",-1]
		];
	};

//Cop-Air-Shops	
	case "cop_air_1":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",150000]];			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",375000]];		
		};		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,		
			["B_Heli_Transport_01_F",1000000]];				
		};		
	};
	
	case "cop_air_2":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",150000]];			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",375000]];		
		};		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,		
			["B_Heli_Transport_01_F",1000000]];				
		};		
	};
	
	case "cop_air_3":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",150000]];			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",375000]];		
		};		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,		
			["B_Heli_Transport_01_F",1000000]];				
		};		
	};
	
	case "cop_air_4":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",150000]];			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",375000]];		
		};		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,		
			["B_Heli_Transport_01_F",1000000]];				
		};		
	};
	
	case "cop_air_5":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",150000]];			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",375000]];		
		};		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,		
			["B_Heli_Transport_01_F",1000000]];				
		};		
	};
	
//Civil-Boat-Shops	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",-1],
			["C_Boat_Civil_01_F",-1],
			["B_SDV_01_F",-1]
		];
	};
	
	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",-1],
			["C_Boat_Civil_01_F",-1],
			["B_SDV_01_F",-1]
		];
	};
	
	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",-1],
			["C_Boat_Civil_01_F",-1],
			["B_SDV_01_F",-1]
		];
	};

//Cop-Boat-Shop
	case "cop_ship_1":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Boat_Transport_01_F",15000]];			
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Boat_Civil_01_police_F",25000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_SDV_01_F",37500]];		
		};			
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,		
			["B_Boat_Armed_01_minigun_F",75000]];				
		};		
	};
};

_return;
