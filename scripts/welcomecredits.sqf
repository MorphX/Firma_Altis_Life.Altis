/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: RenildoMarcio
	Date: 09/05/2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 8;

sleep 15; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Willkommen auf unserem Altis Life Server!";
_role1names = ["Die Firma"];
_role2 = "Administratoren";
_role2names = ["MorphX","Megabass","Jafbaed"];
_role3 = "Homepage:";
_role3names = ["www.dieFirma.tv"];
_role4 = "Teamspeak:";
_role4names = ["ts3.dieFirma.tv"];
_role5 = "Neuigkeiten:";
_role5names = ["Der aktuellen Changelog findest du beim uns im Forum!"];
_role6 = "Noch Fragen?";
_role6names = ["Dann komm zu uns auf den Teamspeak!"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#000000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];