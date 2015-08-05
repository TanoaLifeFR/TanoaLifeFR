/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (playerSide == west || playerside == civlian && licence_civ_journaliste) exitWith { systemChat "Vous denez etre sois Flic sois Journaliste"; };
if (playerSide == civilian && !licence_civ_journaliste) exitWith { systemChat "Vous devez etre Journaliste"; };
if !( life_channel_send ) exitWith { systemChat "Attendre 10 minutes avant d'envoyer un nouveau message !"; };

_message = ctrlText 9001;
[[3,format [" %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;

[] spawn
{
	sleep 600;
	life_channel_send = true;
};