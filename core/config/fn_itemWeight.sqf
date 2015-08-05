/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {6};
	case "heroinp": {5};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {5};
	case "ironore": {5};
	case "copper_r": {4};
	case "iron_r": {4};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {2};
	case "glass": {2};
	case "diamond": {4};
	case "diamondc": {3};
	case "cocaine": {6};
	case "cocainep": {5};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "zipties": {2};
	case "argent": {5};
	case "argentr": {3};
	case "charbon": {4};
	case "charbonr": {2};
	case "kitmeth": {5};
	case "poudrehydroxyde": {4};
	case "crystalmeth": {3};
	case "crystalmethpur": {2};
	case "gpstracker": {3};
	case "mur": {2};
	case "sac": {2};
	case "spikeStrip": {2};
	case "cone": {2};
	case "barre": {2};
	case "light": {2};
	case "flecheg": {2};		
	case "fleched": {2};
	case "plutoniumore": {7};
	case "plutonium_r": {5};
	case "feuilletabac": {3};
	case "paquetcigarette": {2};
	default {1};
};
