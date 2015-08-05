//File name: fn_daiarmi.sqf
//Author: Michele

//This is script for sold license
_venditore = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
[[_venditore],"life_fnc_riceviarmi",cursorTarget,false] spawn life_fnc_MP;