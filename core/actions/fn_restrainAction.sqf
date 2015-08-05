/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
player say3D "cuff";
if (side player == civilian) then {
	if(life_inv_zipties < 1) exitWith { hint "Tu n'as pas de zipties"; };
	life_inv_zipties = life_inv_zipties - 1;
	hint "Tu l'as attache";
};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;