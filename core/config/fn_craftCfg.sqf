#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				["hgun_P07_F", ["life_inv_argentr",10,"life_inv_copperr",1]],
				["16Rnd_9x21_Mag", ["life_inv_ironr",3,"life_inv_sand",1]],
				
				["arifle_sdar_F", ["life_inv_argentr",10,"life_inv_copperr",1]],
				["30Rnd_556x45_Stanag", []],
				
				["arifle_TRG21_F", ["life_inv_argentr",10,"life_inv_copperr",2]],
				["30Rnd_556x45_Stanag", ["life_inv_ironr",10,"life_inv_sand",2]],
				
				["arifle_Katiba_F", ["life_inv_argentr",10,"life_inv_copperr",4]],
				["30Rnd_65x39_caseless_green", ["life_inv_copperr",10,"life_inv_sand",2]],
				
				["srifle_GM6_F", ["life_inv_goldbar",5]],
				["5Rnd_127x108_Mag", ["life_inv_diamond",10,"life_inv_sand",5]],
				
				["optic_Arco", ["life_inv_argentr",5,"life_inv_charbonr",2]],
				["optic_Hamr", ["life_inv_argentr",5,"life_inv_charbonr",2]],
				["optic_Holosight", ["life_inv_argentr",5,"life_inv_charbonr",2]],
			
				["ToolKit", ["life_inv_copperr",2]],
				["FirstAidKit", ["life_inv_copperr",2]],
				["NVGoggles", ["life_inv_copperr",5]]
			];	
	};

	case "uniform":
	{
		_return = [
				["U_IG_Guerilla1_1", ["life_inv_cannabis",5,"life_inv_kitmeth",2]],
				["U_I_G_resistanceLeader_F", ["life_inv_cannabis",7,"life_inv_heroinp",4]],
				["U_I_GhillieSuit", ["life_inv_goldbar",4]]
			];	
	};

	case "backpack":
	{
		_return = [
				["B_Carryall_oli", ["life_inv_charbonr",2]],
				["B_AssaultPack_cbr", ["life_inv_charbonr",2]],
				["B_Kitbag_mcamo", ["life_inv_charbonr",2]],
				["B_TacticalPack_oli", ["life_inv_charbonr",2]],
				["B_FieldPack_ocamo", ["life_inv_charbonr",2]],
				["B_Bergen_sgg", ["life_inv_charbonr",2]],
				["B_Kitbag_cbr", ["life_inv_charbonr",2]]
			];
	};

	case "item":
	{
		_return = [
				["life_inv_pickaxe", ["life_inv_copperr",1,"life_inv_rabbit",1]],
				["life_inv_water", ["life_inv_copperr",1]],
				["life_inv_apple", ["life_inv_charbonr",1]],
				["life_inv_tbacon", ["life_inv_copperr",1,"life_inv_rabbit",1]],
				["life_inv_redgull", ["life_inv_copperr",2,"life_inv_rabbit",1]],
				["life_inv_zipties", ["life_inv_charbonr",2]],
				["life_inv_gpstracker", ["life_inv_copperr",8,"life_inv_glass",1]]
		];
	};
};

_return; 