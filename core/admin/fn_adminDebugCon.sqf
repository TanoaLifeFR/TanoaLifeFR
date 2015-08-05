

#include <macro.h>
/*
    File: fn_adminDebugCon.sqf
    Author: ColinM9991
    
    Description:
    Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint "Tu n'as l'admin level assez haut.";};

createDialog "RscDisplayDebugPublic";
[[0,format["!!!!! L'Admin |  %1  | a ouvert la console de débugage. !!!!!",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;

