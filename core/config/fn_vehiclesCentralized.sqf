/*

	Centralized vehicle configuration because TONIC always wants to clutter everything in 100000000 files -.-
	Colors are configured elsewhere

*/

private["_calcgarageprice"];

diag_log "Loading centralized vehicle configuration ...";

//Schema: CLASSNAME, TRUNK-WEIGHT, DEFAULT-BUYPRICE, SELLPRICE, GARAGE-UNPARK-PRICE (-1 = 5% of buy price), ISILLEGAL, ILLEGALVALUE
life_vehicle_config_new = [

	["B_Quadbike_01_F", 			50, 	3750, 		0, 		-1, 		false, 		0], //Quad
	
	["C_Hatchback_01_F", 			75, 	30000, 		0, 		-1, 		false, 		0], //Limosine
	["C_Hatchback_01_sport_F",		75, 	60000, 		0, 		-1, 		false, 		0], //Sportlimosine (Donator-only)
	
	["C_SUV_01_F", 					100, 	60000, 		0, 		-1, 		false, 		0], //SUV
	
	["C_Offroad_01_F", 				150, 	37500, 		0, 		-1, 		false, 		0], //Geländewagen
	["B_G_Offroad_01_F", 			150, 	75000, 		0, 		-1, 		true, 		0], //Rebellen-Offroader
	
	["C_Van_01_transport_F", 		200, 	112500,		0, 		-1, 		false, 		0], //Van-Pritsche
	["C_Van_01_box_F", 				250, 	187500, 	0, 		-1, 		false, 		0], //Van-Boxer	
	//["C_Van_01_fuel_F", 			100, 	175000, 	0, 		-1, 		false, 		0], //Van-Fuel
	
	["I_Truck_02_transport_F", 		325, 	2250000, 	0, 		-1, 		false, 		0], //Zamak offen
	["I_Truck_02_covered_F", 		400, 	2625000, 	0, 		-1,			false, 		0], //Zamak abgedeckt	
	//["O_Truck_02_fuel_F", 		350, 	475000, 	0, 		-1,			false, 		0], //Zamak Fuel
	
	["O_Truck_03_transport_F", 		500, 	2625000, 	0, 		-1, 		false, 		0], //Tempest offen (Rebell-only)
	["O_Truck_03_covered_F", 		675, 	4125000,	0, 		-1, 		false, 		0], //Tempest abgedeckt	(Rebell-only)
	["O_Truck_03_device_F", 		200, 	7500000,	0, 		-1, 		false, 		0], //Tempest Gerät		
	//["O_Truck_03_fuel_F", 		550, 	6750000,	0, 		-1, 		false, 		0], //Tempest Fuel
	
	["B_Truck_01_transport_F", 		475, 	3000000, 	0, 		-1, 		false,		0], //Hemtt offen
	["B_Truck_01_covered_F", 		800, 	4500000, 	0, 		-1, 		false, 		0], //Hemtt abgedeckt
	["B_Truck_01_box_F", 			1000, 	6000000, 	0, 		-1, 		false, 		0], //Hemtt Container (Donator-only)	
	["B_Truck_01_fuel_F", 			600, 	3750000, 	0, 		-1, 		false, 		0], //Hemtt Fuel
	["B_Truck_01_mover_F", 			250, 	75000, 		0, 		-1, 		false, 		0], //Hemtt Abschlepper (ADAC-only)
	
	["O_MRAP_02_F", 				100, 	1750000, 	0, 		-1, 		true, 		200000], //Ifrit
	["B_MRAP_01_F", 				100,	25000, 		0, 		-1, 		false, 		0], //Hunter
	["I_MRAP_03_F", 				100, 	3000000, 	0, 		-1, 		true, 		200000], //Strider	
	
	["B_G_Offroad_01_armed_F", 		100, 	1000000, 	0, 		-1, 		true, 		500000], //Rebellen-Offroader HMG (Rebell-only)
	["O_MRAP_02_hmg_F", 			100, 	2000000, 	0, 		-1, 		true, 		500000], //Ifrit HMG
	["B_MRAP_01_hmg_F", 			100, 	250000, 	0, 		-1, 		false, 		0], //Hunter HMG
	
	["B_Heli_Light_01_F", 			75, 	1250000, 	0, 		-1, 		false, 		0], //Hummingbird
	["O_Heli_Light_02_unarmed_F", 	200, 	3250000, 	0, 		-1, 		false, 		0], //Orca
	["I_Heli_light_03_unarmed_F", 	200, 	5000000, 	0,		-1, 		false, 		0], //Hellcat 
	["I_Heli_Transport_02_F", 		550, 	7500000, 	0, 		-1, 		false, 		0], //Mohawk
	
	["B_Heli_Transport_01_F", 		125, 	6250000, 	0, 		-1, 		false, 		0], //Ghost-Hawk
		
	["C_Rubberboat", 				50, 	5000, 		0, 		-1, 		false, 		0], //Gummiboot
	["C_Boat_Civil_01_F", 			100,	17500,		0, 		-1, 		false, 		0], //Motorboot
	["C_Boat_Civil_01_police_F", 	100, 	10000, 		0, 		-1, 		false,		0], //Motorboot Polizei
	
	["B_SDV_01_F", 					100, 	75000, 		0, 		-1, 		false, 		0] //Uboot
];





////////////////Logic

{
	//Generate garage prices
	if((_x select 4) < 0) then
	{
		_calcgarageprice = _x select 2;
		_calcgarageprice = _calcgarageprice * 0.01;
        
        if(_calcgarageprice > 2000000) then
        {
          	_calcgarageprice = 2000000;  
        };
        
		_calcgarageprice = round _calcgarageprice;
		
		_x set [4, _calcgarageprice];
		
		diag_log format["Garage price for %1 calculated to %2", _x select 0, _x select 4];
	};
	
	//Add to garage array
	life_garage_prices set [count life_garage_prices, [ _x select 0, _x select 4 ]];
	
	//Add to sell array
	life_garage_sell set [count life_garage_sell, [ _x select 0, _x select 3 ]];
}
foreach life_vehicle_config_new;

