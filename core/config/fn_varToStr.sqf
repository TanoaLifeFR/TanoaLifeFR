﻿/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_zipties": {"Zipties"};
	case "life_inv_argent": {(localize "STR_Item_Argent")};
	case "life_inv_argentr": {(localize "STR_Item_ArgentIngot")};
	case "life_inv_charbon": {(localize "STR_Item_Charbon")};
	case "life_inv_charbonr": {(localize "STR_Item_CharbonIngot")};
	case "life_inv_kitmeth": {(localize "STR_Item_KitMeth")};
	case "life_inv_crystalmeth": {(localize "STR_Item_CristalNPur")};
	case "life_inv_crystalmethpur": {(localize "STR_Item_CristalPur")};
	case "life_inv_poudrehydroxyde": {(localize "STR_Item_Anhydre")};
	case "life_inv_gpstracker": {"GPS Tracker"};
	case "life_inv_mur": {"Mur"};
	case "life_inv_sac": {"Sac de sable"};
	case "life_inv_cone": {"Cone Routier"};
	case "life_inv_barre": {"Barrière"};
	case "life_inv_lightr": {"Lumiere Rouge"};
	case "life_inv_lightg": {"Lumiere Verte"};
	case "life_inv_lighty": {"Lumiere Jaune"};	
	case "life_inv_flecheg": {"Fleche Gauche"};
	case "life_inv_fleched": {"Fleche Droite"};
	case "life_inv_plutoniumore": {"Pepite de Plutonium"};
	case "life_inv_plutonium_r": {"Lingot de Plutonium"};
	case "life_inv_feuilletabac": {"Feuille(s) de Tabac"};
	case "life_inv_paquetcigarette": {"Paquet(s) de Cigarette"};
	
	//License Block
	case "license_adac_car": {"Permis de Conduire AP"};
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_rebel2": {(localize "STR_License_Rebel2")};
	case "license_civ_rebel3": {(localize "STR_License_Rebel3")};
	case "license_civ_rebel4": {(localize "STR_License_Rebel4")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "licence_civ_dona1": {"Donateur 1"};
    case "licence_civ_dona2": {"Donateur 2"};
    case "licence_civ_dona3": {"Donateur 3"};
	case "licence_civ_dona4": {"Donateur 4"};
	case "licence_civ_journaliste": {"Journaliste"};
	case "license_civ_argent": {(localize "STR_License_Argent")};
	case "license_civ_charbon": {(localize "STR_License_Charbon")};
	case "license_civ_meth": {(localize "STR_License_Meth")};
	case "licence_civ_detective": {"Détective"};
	case "licence_civ_plutonium": {"Fonte du Plutonium"};
	case "licence_civ_cigarette": {"Production de Cigarette"};
	case "licence_civ_gt": {"- Global Trust -"};
};
