/*

	Zentrale Konfiguration für alle Fahrzeuge

*/


//Schema: FAHRZEUG, CONDITIONS (civ,cop,reb,adac,donator) - leer lassen für alle - arbeitet mit ODER, FARB-NAME, FARB-DATEN, ---FARBEIMER---
life_vehicle_colors_new = 
[
	//C_Offroad_01_F (Offroader)
	//////////////////////////////////////////////////////
	["C_Offroad_01_F",["civ"]			, "Rot", 		["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"], 3], 
	["C_Offroad_01_F",["civ"]			, "Gelb",		["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"], 3],
	["C_Offroad_01_F",["civ"]			, "Weiss",		["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"], 3],
	["C_Offroad_01_F",["civ"]			, "Blau",		["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"], 3],
	["C_Offroad_01_F",["civ"]			, "Dunkelrot",	["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"], 3],
	["C_Offroad_01_F",["civ"]			, "Blau-Weiss",	["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"], 3],
	["C_Offroad_01_F",["cop"]			, "Polizei",	["textures\skins\police\offroad_police.jpg"], 3],
	["C_Offroad_01_F",["civ"]			, "Taxi",		["textures\skins\civilian\offroad_taxi.jpg"], 3],
	["C_Offroad_01_F",["adac"]			, "ADAC",		["textures\skins\civilian\offroad_adac.jpg"], 3],

	
	//C_Hatchback_01_F  (Limosine)
	//////////////////////////////////////////////////////
	["C_Hatchback_01_F",["civ"]			, "Beige",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"], 3],
	["C_Hatchback_01_F",["civ"]			, "Gruen",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"], 3],
	["C_Hatchback_01_F",["civ"]			, "Blau",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"], 3],
	["C_Hatchback_01_F",["civ"]			, "Dunkelblau",	["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"], 3],
	["C_Hatchback_01_F",["civ"]			, "Gelb",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"], 3],
	["C_Hatchback_01_F",["civ"]			, "Weiss",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"], 3],
	["C_Hatchback_01_F",["civ"]			, "Grau",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"], 3],
	
	//C_Hatchback_01_sport_F (Sportlimosine)
	//////////////////////////////////////////////////////
	["C_Hatchback_01_sport_F",["civ"]		, "Beige",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"], 5],
	["C_Hatchback_01_sport_F",["civ"]		, "Gruen",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"], 5],
	["C_Hatchback_01_sport_F",["civ"]		, "Blau",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"], 5],
	["C_Hatchback_01_sport_F",["civ"]		, "Dunkelblau",	["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"], 5],
	["C_Hatchback_01_sport_F",["civ"]		, "Gelb",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"], 5],
	["C_Hatchback_01_sport_F",["civ"]		, "Weiss",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"], 5],
	["C_Hatchback_01_sport_F",["civ"]		, "Grau",		["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"], 5],
	["C_Hatchback_01_sport_F",["cop"]		, "Polizei",	["textures\skins\police\hatchback_sport_police.jpg"], 5],
	
	//C_SUV_01_F  (SUV)
	//////////////////////////////////////////////////////
	["C_SUV_01_F",["civ"]		,"Dunkelrot",	["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"], 5],
	["C_SUV_01_F",["civ"]		,"Schwarz",		["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"], 5],
	["C_SUV_01_F",["civ"]		,"Silber",		["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"], 5],
	["C_SUV_01_F",["civ"]		,"Organge",		["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"], 5],
	["C_SUV_01_F",["cop"]		,"Polizei",		["textures\skins\police\suv_police.jpg"], 5],
	
	//C_Van_01_box_F (Van-Boxer)
	//////////////////////////////////////////////////////
	["C_Van_01_box_F",["civ"]		,"Weiss",	["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 7],
	["C_Van_01_box_F",["civ"]		,"Rot",		["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 7],
	
	//C_Van_01_transport_F (Van-Pritsche)
	//////////////////////////////////////////////////////
	["C_Van_01_transport_F",["civ"]		,"Weiss",	["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 6],
	["C_Van_01_transport_F",["civ"]		,"Rot",		["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 6],
	
	//C_Van_01_fuel_F  (Van-Tanken)
	//////////////////////////////////////////////////////
	["C_Van_01_fuel_F",["civ"]		,"Weiss",	["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 7],
	["C_Van_01_fuel_F",["civ"]		,"Rot",		["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 7],
	
	//B_Quadbike_01_F  (Quad)
	//////////////////////////////////////////////////////
	["B_Quadbike_01_F",["civ"]			,"Braun",			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]			,"Digi Wueste",		["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"], 1],
	["B_Quadbike_01_F",["cop"]			,"Polizei",			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"], 1],
	["B_Quadbike_01_F",["civ"]			,"Blau",			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"], 1],
	["B_Quadbike_01_F",["civ"]			,"Rot",				["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"], 1],
	["B_Quadbike_01_F",["civ"]			,"Weiss",			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]			,"Digi Gruen",		["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]			,"Hunter Camo",		["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]			,"Rebell Camo",		["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"], 1],
	
	//B_Heli_Light_01_F  (Hummingbird)
	//////////////////////////////////////////////////////
	["B_Heli_Light_01_F",["cop"]			,"Gruen-Braun",		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Blau",			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Rot",				["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"], 8],
	["B_Heli_Light_01_F",["reb"]			,"Digi Gruen",		["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Blaulinie",		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Elyptisch",		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Furious",			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Jeans",			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Speedy",			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Sonnenuntergang",	["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Vrana",			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"], 8],
	["B_Heli_Light_01_F",["civ"]			,"Wellenblau",		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"], 8],
	["B_Heli_Light_01_F",["reb"]			,"Rebell Digi",		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"], 8],
	["B_Heli_Light_01_F",["cop"]			,"Polizei",			["textures\skins\police\hummingbird_police.jpg"], 8],
	["B_Heli_Light_01_F",["adac"]			,"ADAC",			["textures\skins\civilian\hummingbird_adac.jpg"], 8],
	
	//O_Heli_Light_02_unarmed_F (Orca)
	//////////////////////////////////////////////////////
	["O_Heli_Light_02_unarmed_F",["civ"]	,"Blau-Weiss",		["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"], 10],
	["O_Heli_Light_02_unarmed_F",["reb"]	,"Digi Gruen",		["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"], 10],
	["O_Heli_Light_02_unarmed_F",["reb"]	,"Rebell",			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"], 10],
	
	//B_MRAP_01_F (Hunter)
	//////////////////////////////////////////////////////
	["B_MRAP_01_F",["cop"]					,"Polizei",		["textures\skins\police\hunter_police_1.jpg","textures\skins\police\hunter_sek_2.jpg"], 7],
	["B_MRAP_01_F",["cop"]					,"SEK",			["textures\skins\police\hunter_sek_1.jpg","textures\skins\police\hunter_sek_2.jpg"], 7],
	//["B_MRAP_01_F",["cop"]				,"Sniper",		["textures\skins\police\hunter_sniper_1.jpg","textures\skins\police\hunter_sniper_2.jpg"], 7],
	
	//I_MRAP_03_F (Strider)
	//////////////////////////////////////////////////////
	["I_MRAP_03_F",["civ"]					,"Digi Gruen",		["\a3\soft_f_beta\MRAP_03\Data\mrap_03_ext_indp_co.paa"], 8],
	["I_MRAP_03_F",["cop"]					,"SEK",				["textures\skins\police\strider_sek.jpg"], 8],
	
	

	
	//B_MRAP_01_hmg_F (Bewaffneter Hunter) - Hat die selben Texturen wie der Hunter
	//////////////////////////////////////////////////////
	["B_MRAP_01_hmg_F",["cop"]			,"SEK",			["textures\skins\police\hunter_sek_1.jpg","textures\skins\police\hunter_sek_2.jpg"], 8],
	
	//I_Truck_02_covered_F (Zamak-Plane)
	//////////////////////////////////////////////////////
	["I_Truck_02_covered_F",["civ"]		,"Orange",		["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"], 8],
	
	//B_Truck_01_mover_F (Hemett-Abschlepp)
	["B_Truck_01_mover_F",["adac"]		,"ADAC",		["textures\skins\civilian\hemtt_adac_1.jpg","textures\skins\civilian\hemtt_adac_2.jpg"], 9],
	
	
	//I_Truck_02_transport_F (Zamak)
	//////////////////////////////////////////////////////
	["I_Truck_02_transport_F",["civ"]		,"Orange",		["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"], 8],
	
	//I_Heli_light_03_unarmed_F  (Hellcat)
	//////////////////////////////////////////////////////
	["I_Heli_light_03_unarmed_F",["cop"]	,"Polizei",		["textures\skins\police\hellcat_police.jpg"], 10],
	["I_Heli_light_03_unarmed_F",["civ"]	,"Boese",		["textures\skins\civilian\hellcatrep.jpg"], 10],
	
	//I_Heli_Transport_02_F
	//////////////////////////////////////////////////////
	["I_Heli_Transport_02_F",["civ"]		,"Ion",				["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
																"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
																"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"], 12],
	["I_Heli_Transport_02_F",["civ"]		,"Dahoman",			["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
																"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
																"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"], 12],
	["I_Heli_Transport_02_F",["reb"]		,"Damut",			["textures\skins\civilian\damut_mohawk_1.jpg",
																"textures\skins\civilian\damut_mohawk_2.jpg",
																"textures\skins\civilian\damut_mohawk_3.jpg"], 12],																
	["I_Heli_Transport_02_F",["reb"]		,"Digi Gruen",		["\a3\air_f_beta\Heli_Transport_02\Data\heli_transport_02_1_indp_co.paa",
																"\a3\air_f_beta\Heli_Transport_02\Data\heli_transport_02_2_indp_co.paa",
																"\a3\air_f_beta\Heli_Transport_02\Data\heli_transport_02_3_indp_co.paa"], 12]
];

