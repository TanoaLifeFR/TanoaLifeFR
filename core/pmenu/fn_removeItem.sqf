/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Tu dois selectionne un objet a jeter";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Rentre quelque chose de correct"};
if(parseNumber(_value) <= 0) exitWith {hint "Tu dois mettre quelque chose de valide"};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["This is an illegal item and cops are near by, you cannot dispose of the evidence","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Tu ne peux pas jeter un objet depuis le vehicule","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Tu ne peux pas supprime sa, en as tu assez ?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Tu as jeter %1 %2 de ton inventaire",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;