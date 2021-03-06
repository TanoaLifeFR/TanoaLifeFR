/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "water"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "marijuana"):
	{
    if(([false,_item,1] call life_fnc_handleInv)) then
    {
        [] spawn life_fnc_weed;
    };
};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
	
	case (_item == "cokep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_weed;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_weed;
		};
	};

	case (_item == "mur"):
	{
		if(!isNull life_mur) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "sac"):
	{
		if(!isNull life_sac) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "cone"):
	{
		if(!isNull life_cone) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "barre"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "lightr"):
	{
		if(!isNull life_lightr) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};

	case (_item == "lightg"):
	{
		if(!isNull life_lightg) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "lighty"):
	{
		if(!isNull life_lighty) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
		
	case (_item == "flecheg"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "fleched"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "gpstracker"): 
	{
		[cursorTarget] spawn life_fnc_gpsTracker;
	}; 
	
	case (_item == "mauer"):
	{
		if(!isNull life_mauer) exitWith {hint "Vous avez déjà une barrière!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_mauer;
		};
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;