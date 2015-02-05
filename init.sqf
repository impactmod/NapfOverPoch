/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	24;				//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epochconfig
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
dayz_MapArea = 18000; // Default = 10000
dayz_minpos = -1000; 
dayz_maxpos = 26000;

//Epoch Config Variables
call compile preprocessFileLineNumbers "config\epochconfig.sqf";	

EpochEvents = [["any","any","any","any",0,"animated_crash_spawner"],["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];

//Load in compiled functions
call compile preprocessFileLineNumbers "addons\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "addons\init\compiles.sqf";				//Compile regular functions
call compile preprocessFileLineNumbers "addons\gold\ZSCinit.sqf";
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\mission.sqf";

	_serverMonitor = 	[] execVM "\z\addons\dayz_server\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//execVM "addons\debug_monitor\custom_monitor.sqf";
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	execVM "addons\groupManagement\init.sqf";
	execVM "addons\VehicleKeyChanger\VehicleKeyChanger_init.sqf";
	execVM "addons\compiles\playerHud.sqf";
	//execVM "addons\welcome\Server_WelcomeCredits.sqf";
	execVM "addons\service_point\service_point.sqf";
	_pic = "addons\watermark\watermarkimpact.paa";
	[
    '<img align=''left'' size=''1.0'' shadow=''1'' image='+(str(_pic))+' />',
    safeZoneX+0.027,
    safeZoneY+safeZoneH-0.1,
    99999,
    0,
    0,
    3090
	] spawn bis_fnc_dynamicText;
	
	
	//anti Hack 
	//[] execVM "\z\addons\dayz_code\system\antihack.sqf"; //Disabled For Infi

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
};
//#include "\z\addons\dayz_code\system\REsec.sqf" Disabled For Infi
//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

//Mod Config 
execVM  "config\modconfig.sqf";	

