/*
	File: fn_gatherMuell.sqf
	Author: Skaroh "GameUnity.me" 
	Based on TAW_Tonic Scripts
	
	Description:
	Sammelt Muell "Pfandflaschen"
*/
private["_sum"];
_sum = ["water",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Sammle Pfandflaschen ...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"water",_sum] call life_fnc_handleInv)) then
	{
		//player say3D "take"; //##87
		[player,"take"] call life_fnc_globalSound;
		titleText[format["Du hast %1 Pfandflaschen gesammelt.",_sum],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;