/*
	File: fn_adacLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the adac out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "U_B_SpecopsUniform_sgg";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player assignItem "ItemRadio";
player addItem "ItemRadio";

[[player,0,"textures\Mercenaire\trellis_merc.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear;