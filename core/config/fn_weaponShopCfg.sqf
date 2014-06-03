#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	//////////////////////Gas shop
	case "gas":
	{
		["Tankstelle",
			[
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["Itemwatch",nil,100],
				["ItemCompass",nil,50],
				["ItemMap",nil,50],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	////////////////////// Medikit-Shop
	case "medical":
	{
		["Medizinische Ausruestung",
			[				
				["FirstAidKit",nil,150]
				//["Medikit",nil,2000]
			]
		];
	};
	
	case "cop_rekrut":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 1): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Rekrut Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						//Zubhoer
						["Binocular",nil,150],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};

	case "cop_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 2): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Officer Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,300],
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],						
						//Zubhoer
						["Binocular",nil,150],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]																
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 3): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Sergeant Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["acc_flashlight",nil,750],
						//Zubhoer
						["SmokeShellGreen","Traenengas",1500],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]										
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 4): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Lieutenant Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,1000],
						//Zubhoer
						["SmokeShellGreen","Traenengas",1500],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["B_UavTerminal",nil,50000],
						["B_UAV_01_backpack_F",nil,80000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 5): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Captain Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_Black_F",nil,30000],
						["arifle_MX_GL_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["1Rnd_SmokeGreen_Grenade_shell","Traenengas",2500],	
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,1000],
						//Zubhoer
						["SmokeShellGreen","Traenengas",1500],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["B_UavTerminal",nil,50000],
						["B_UAV_01_backpack_F",nil,80000]
					]
				];
			};
		};
	};

	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 6): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Major Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_Black_F",nil,30000],
						["arifle_MX_GL_Black_F",nil,35000],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["1Rnd_SmokeGreen_Grenade_shell","Traenengas",2500],
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box",nil,1500],
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,1000],
						//Zubhoer
						["SmokeShellGreen","Traenengas",1500],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["B_UavTerminal",nil,50000],
						["B_UAV_01_backpack_F",nil,80000]						
					]
				];
			};
		};
	};	

	case "cop_general":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) != 7): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["General Shop",
					[
						//Waffen
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 											
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_Black_F",nil,30000],
						["arifle_MX_GL_Black_F",nil,35000],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["1Rnd_SmokeGreen_Grenade_shell","Traenengas",2500],
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box",nil,1500],						
						["srifle_EBR_F",nil,45000],
						["20Rnd_762x51_Mag",nil,500],
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,1000],
						//Zubhoer
						["SmokeShellGreen","Traenengas",1500],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["B_UavTerminal",nil,50000],
						["B_UAV_01_backpack_F",nil,80000]
					]
				];
			};
		};
	};		
	
	//##98
/*	case "cop_sniper":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (!license_cop_sniper): {"Du bist kein Sniper!"};
			default
			{
				["Altis Sniper Shop",
					[
						["srifle_LRR_SOS_F",nil,50000],
						["7Rnd_408_Mag",nil,2000],
						["optic_Arco",nil,4000],
						["optic_NVS",nil,6000],
						["Laserdesignator",nil,7500],
						["U_B_GhillieSuit",nil,15000],
						["U_O_GhillieSuit",nil,15000],
						["U_I_GhillieSuit",nil,15000]
					]
				];
			};
		};
	};*/
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Cop!"};
			case (!license_civ_rebel): {"Du hast keine Rebellentlizenz!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						//Pistolen
						["hgun_Pistol_heavy_02_F",nil,7500],
						["6Rnd_45ACP_Cylinder",nil,750],
						["optic_Yorris",nil,1000],
						["hgun_ACPC2_F",nil,12500],
						["9Rnd_45ACP_Mag",nil,1250],
						["hgun_Pistol_heavy_01_F",nil,17500],
						["11Rnd_45ACP_Mag",nil,1750],
						["optic_MRD",nil,1500],
						//Waffen
						["arifle_Mk20_F",nil,50000],
						["arifle_Mk20_plain_F",nil,55000],
						["arifle_Mk20C_F",nil,50000],
						["arifle_Mk20C_plain_F",nil,55000],
						["30Rnd_556x45_Stanag",nil,5500],
						["arifle_Katiba_F",nil,80000],
						["arifle_Katiba_C_F",nil,85000],
						["30Rnd_65x39_caseless_green",nil,8500],
						["srifle_DMR_01_F",nil,120000],
						["10Rnd_762x51_Mag",nil,12000],
						["LMG_Zafir_F",nil,175000],
						["150Rnd_762x51_Box",nil,17500],
						//Visiere
						["optic_Aco",nil,600],
						["optic_ACO_grn",nil,600],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Hamr",nil,4000],
						["optic_MRCO",nil,6000],
						["optic_Arco",nil,8000],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,2000],
						//Sonstiges
						["ItemCompass",nil,100],
						["ItemGPS",nil,750],
						["ItemMap",nil,150],
						["Binocular",nil,1500],
						["Rangefinder",nil,7500],
						["NVGoggles",nil,3500],
						["FirstAidKit",nil,200],
						["ToolKit",nil,300],
						["SmokeShell",nil,250]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Cop!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Waffenladen",
					[
						//Waffen
						["hgun_Rook40_F",nil,8500],
						["16Rnd_9x21_Mag",nil,350],
						["arifle_SDAR_F",nil,30000],
						["20Rnd_556x45_UW_mag",nil,750],
						["SMG_01_F",nil,35000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["SMG_02_F",nil,40000],	
						["30Rnd_9x21_Mag",nil,1500],
						//Visiere
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Aco_smg",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["acc_flashlight",nil,750],
						//Sonstiges
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) >= 1):
			{
				["Donator Shop",
					[
						["hgun_Rook40_F",nil,6375],
						["hgun_Pistol_heavy_01_F",nil,7125],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["muzzle_snds_L",nil,1500],
						["16Rnd_9x21_Mag",nil,187],
						["11Rnd_45ACP_Mag",nil,262],
						["6Rnd_45ACP_Cylinder",nil,337],
						["arifle_Katiba_F",nil,41250],
						["optic_ACO_grn",nil,1500],
                        ["optic_Aco",nil,1500],
                        ["optic_Hamr",nil,3750],
                        ["optic_Arco",nil,3750],
                        ["optic_MRCO",nil,4125],
                        ["optic_nvs",nil,15000],
                        ["optic_DMS",nil,9375],
                        ["optic_SOS",nil,13125],
                        ["optic_LRPS",nil,11250],
                        ["optic_Holosight",nil,2625],
						["acc_flashlight",nil,562],
						["acc_pointer_IR",nil,562],
						["RangeFinder",nil,1875],
						["NVGoggles",nil,1500],
						["muzzle_snds_L",nil,2625],
						["muzzle_snds_acp",nil,3750],
						["muzzle_snds_M",nil,4500],
						["muzzle_snds_H",nil,6375],
						["muzzle_snds_B",nil,7500],  
						["SmokeShell",nil,375],
						["30Rnd_65x39_caseless_green",nil,262],
						//["B_UavTerminal",nil,37500],
						//["B_UAV_01_backpack_F",nil,60000],
						
						["B_AssaultPack_cbr",nil,1875],
						["B_TacticalPack_oli",nil,2625],
						["B_FieldPack_ocamo",nil,2250],
						["B_Bergen_sgg",nil,3375],
						["B_Kitbag_cbr",nil,3375],
						["B_Kitbag_mcamo",nil,3375],
						["B_Carryall_oli",nil,3750],
						["B_Carryall_khk",nil,3750],
						["B_Parachute",nil,7500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,200],
				["ItemGPS",nil,250],
				["ToolKit",nil,500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2500],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "kartstore":
	{
		["Kart Ausrüstung",
			[
				["U_C_Driver_1",nil,3500],
				["H_RacingHelmet_1_F",nil,500],
				["U_C_Driver_2",nil,3500],
				["H_RacingHelmet_2_F",nil,500],
				["U_C_Driver_3",nil,3500],
				["H_RacingHelmet_3_F",nil,500],
				["U_C_Driver_4",nil,3500],
				["H_RacingHelmet_4_F",nil,500],
				["U_Marshal",nil,3500],
				["H_Cap_marshal",nil,500],
				["hgun_Pistol_Signal_F",nil,10000],
				["6Rnd_RedSignal_F",nil,1000],
				["6Rnd_GreenSignal_F",nil,1000]
			]
		];
	};
	
	case "event":
	{
		if( [] call life_fnc_playerInEvent ) then
		{
			["*** Event ***",
					[						
					]
				];
		}
		else
		{
			hint "Du bist kein Teilnehmer des Events!";
			[];
		};
	};
};
