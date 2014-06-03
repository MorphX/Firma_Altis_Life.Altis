#include <macro.h>
/*
	Kart clothing store
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Kart Kleidung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{		
		_ret set[count _ret,["U_C_Driver_1",nil,3500]];
		_ret set[count _ret,["U_C_Driver_2",nil,3500]];
		_ret set[count _ret,["U_C_Driver_3",nil,3500]];
		_ret set[count _ret,["U_C_Driver_4",nil,3500]];
		_ret set[count _ret,["U_Marshal",nil,3500]];
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_RacingHelmet_1_F",nil,500]];
		_ret set[count _ret,["H_RacingHelmet_2_F",nil,500]];
		_ret set[count _ret,["H_RacingHelmet_3_F",nil,500]];
		_ret set[count _ret,["H_RacingHelmet_4_F",nil,500]];
		_ret set[count _ret,["H_Cap_marshal",nil,500]];
	};
	
	//Glasses
	case 2:
	{
		/*_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];*/
	};
	
	//Vest
	case 3:
	{
		/*_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,1450]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1300]];
		};*/
	};
	
	//Backpacks
	case 4:
	{
		/*_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Parachute",nil,5000]
		];*/
	};
};

_ret;