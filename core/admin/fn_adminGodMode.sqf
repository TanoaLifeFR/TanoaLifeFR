﻿#include <macro.h>
/*
    File: fn_adminGodMode.sqf
    Author: Tobias 'Xetoxyc' Sittenauer

    Description: Enables God mode for Admin
*/

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
while {dialog} do {
closeDialog 0;
sleep 0.01;
};
};

if(life_god) then {
    life_god = false;
    titleText ["God mode désactivé","PLAIN"]; titleFadeOut 2;
    player allowDamage true;
    life_thirst = 100;
    life_hunger = 100;
    player setDamage 0;
    player setFatigue 0;
    sleep 0.5;
    [] call life_fnc_hudUpdate;
} else {
    life_god = true;
    titleText ["God mode activé","PLAIN"]; titleFadeOut 2;
    player allowDamage false;
    life_thirst = 100;
    life_hunger = 100;
    player setDamage 0;
    player setFatigue 0;
    sleep 0.5;
    [] call life_fnc_hudUpdate;
};