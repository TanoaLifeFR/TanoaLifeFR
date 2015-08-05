#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Plus Whitelist",false,true] call BIS_fnc_endMission;
	sleep 30;
};
if(!(str(player) in ["cop_99"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["Pas Whitelist",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
switch (__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 100;};
	case 2: {life_paycheck = life_paycheck + 200;};
	case 3: {life_paycheck = life_paycheck + 300;};
	case 4: {life_paycheck = life_paycheck + 400;};
	case 5: {life_paycheck = life_paycheck + 500;};
	case 6: {life_paycheck = life_paycheck + 600;};
	case 7: {life_paycheck = life_paycheck + 700;};
	case 8: {life_paycheck = life_paycheck + 800;};
	case 9: {life_paycheck = life_paycheck + 900;};
	case 10: {life_paycheck = life_paycheck + 1000;};
	case 11: {life_paycheck = life_paycheck + 1100;};
	case 12: {life_paycheck = life_paycheck + 1200;};
	case 13: {life_paycheck = life_paycheck + 1300;};
	case 14: {life_paycheck = life_paycheck + 1400;};
	case 15: {life_paycheck = life_paycheck + 1500;};
	case 16: {life_paycheck = life_paycheck + 1500;};
	case 17: {life_paycheck = life_paycheck + 1500;};
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] execVM "msgbienvenueCop.sqf";
[] call life_fnc_uniform;