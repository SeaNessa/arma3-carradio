/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine, Volume Edit by Sean
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","volume"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
_radioUI = uiNameSpace getVariable ["radioHUD",displayNull]
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_volume = _radioUI displayCtrl 23520;

//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.598];
_food ctrlSetText format["%1", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.552];
_water ctrlSetText format["%1", life_thirst];
_water ctrlCommit 0;
//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.506];
_health ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_health ctrlCommit 0;
//Update Radio Volume
_health ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.460];
_health ctrlSetText format["%1", life_volume];
_health ctrlCommit 0;
