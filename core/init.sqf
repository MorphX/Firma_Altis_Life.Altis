/*
	Master client initialization file
*/
life_firstSpawn = true;
private["_handle","_timeStamp"];
cutText["Setting up client, please wait...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Stratis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
_handle = [] spawn compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Initialization Variables";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Variables initialized";
//[player] execVM "core\client\disable_respawn.sqf";
_handle = [] spawn life_fnc_setupEVH;
diag_log "::Life Client:: Setting up Eventhandlers";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Eventhandlers completed";
//_handle = [] spawn life_fnc_setupActions;
//diag_log "::Life Client:: Setting up user actions";
//waitUntil {scriptDone _handle};
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {clientGangLeader})};
diag_log "::Life Client:: Received server functions.";
[] call life_fnc_sessionSetup;
waitUntil {life_session_completed};
cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;
//[] execVM "core\client\group_base_respawn.sqf";
//diag_log "::Life Client:: Group Base Execution";

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	default  //Invalid side
	{
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
//[] execFSM "core\fsm\launder.fsm"; //##38
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
//[] execVM "core\client\init_survival.sqf";
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Stratis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
//[player] execVM "core\client\intro.sqf";
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] execVM "core\init_survival.sqf";
uiNamespace setVariable["RscDisplayRemoteMissions",displayNull];
/*
	Initialize SpyGlass
*/
[] call SPY_fnc_payLoad;

setPlayerRespawnTime life_respawn_timer; //Set our default respawn time.
[] execVM "core\monitor_esc.sqf";
[] execVM "scripts\welcomecredits.sqf";
[] call life_fnc_setupActions;

//FIXES ##27
onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };

//##104 update clothing timer
[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};

	
// Code by Zero http://www.the-bounty-hunters.de
[] spawn {
       
        private ["_display","_btnAbort"];
        EscSave = false;
        ServerStop =false;
        life_query_time = time;
    
        while{true}do{
     
                disableSerialization;
                waitUntil {isnull (findDisplay 49)};
                waitUntil {!isnull (findDisplay 49)};
     
                _display = findDisplay 49;
     
                _btnAbort = _display displayCtrl 104;
                _btnAbort ctrlEnable false;
     
                (_display displayCtrl 523) ctrlSetText "";
                (_display displayCtrl 1050) ctrlSetText "Firma Menü";
                (_display displayCtrl 2) ctrlSetText "Weiterspielen";
                (_display displayCtrl 103) ctrlSetText "";
                (_display displayCtrl 1010) ctrlEnable false;
                (_display displayCtrl 1010) ctrlSetText "";
                (_display displayCtrl 120) ctrlSetText "Altis Life edit by die Firma";
                (_display displayCtrl 121) ctrlSetText "http://www.dieFirmaClan.de";
     
                if(!EscSave && !ServerStop)then
                {
                        [_display] spawn {
 
                                private ["_display"];
                                disableSerialization;
                                _display = _this select 0;
                                EscSave = true;
                                [1,true] call life_fnc_sessionHandle;
                                (_display displayCtrl 103) ctrlSetText "Gespeichert!";
                                sleep 30;
                                EscSave = false;
 
                        };
                };
 
                [_btnAbort] spawn {
     
                        private ["_i","_btnAbort"];
                        disableSerialization;
 
                        _btnAbort = _this select 0;
                        _restrained = _this select 1;
     
                        for [{_i=15},{_i>=2},{_i=_i-1}] do
                        {
                                _btnAbort ctrlSetText format["%1 Sekunden Warten",_i];
                                sleep 1;
                        };
                           
                        _btnAbort ctrlSetText "1 Sekunde Warten";
                        sleep 1;
     
                        if(player getVariable["restrained",false] || player getVariable["Escorting",false] || player getVariable["transporting",false])then
                        {
                                _btnAbort ctrlSetText "ROLEPLAY??";
                        }else{
                                _btnAbort ctrlSetText "JETZT ZUR LOBBY";
                                _btnAbort ctrlEnable true;
                        };
                };
        };
};

