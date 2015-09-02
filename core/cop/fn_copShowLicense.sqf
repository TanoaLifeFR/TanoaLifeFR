/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Deathblade
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas un Gendarme !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Gendarme"; };
	case 2: { _rang = "Brigadier"; };
	case 3: { _rang = "Brigadier Chef"; };
	case 4: { _rang = "Sergent"; };
	case 5: { _rang = "Sergent Chef"; };
	case 6: { _rang = "Adjudant"; };
	case 7: { _rang = "Adjudant Chef"; };
	case 8: { _rang = "Major"; };
	case 9: { _rang = "Sous Lieutenant"; };
	case 10: { _rang = "Lieutenant"; };
	case 11: { _rang = "Capitaine"; };
	case 12: { _rang = "Colonel"; };
	case 13: { _rang = "Commandant"; };
	case 14: { _rang = "Général"; };
	case 15: { _rang = "Marechal"; };
	case 16: { _rang = "GIGN"; };
	default {_rank =  "Gendarme";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\Gendarme\insigne.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Gendarmerie</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
