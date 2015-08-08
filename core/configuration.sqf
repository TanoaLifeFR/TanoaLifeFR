#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //En Minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_channel_send = true; 
life_fadeSound = false;
life_mur = ObjNull;
life_sac = ObjNull;
life_barre = ObjNull;
life_cone = ObjNull;
life_lightr = ObjNull;
life_lightg = ObjNull;
life_lighty = ObjNull;
life_flecheg = ObjNull;
life_fleched = ObjNull;
life_god = false;
life_frozen = false;
life_markers = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,5000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 45; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 15; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //cinq minutes
life_cash = 0;
__CONST__(life_impound_car,4000);
__CONST__(life_impound_boat,2500);
__CONST__(life_impound_air,8500);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 1800; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 1700; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 10000;
		life_paycheck = 3000;
	};
	
	case east:
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_zipties",
	"life_inv_argent",
	"life_inv_argentr",
	"life_inv_charbon",
	"life_inv_charbonr",
	"life_inv_kitmeth",
	"life_inv_poudrehydroxyde",
	"life_inv_crystalmeth",
	"life_inv_crystalmethpur",
	"life_inv_gpstracker",
	"life_inv_mur",
	"life_inv_sac",
	"life_inv_cone",
	"life_inv_barre",
	"life_inv_lightr",
	"life_inv_lightg",
	"life_inv_lighty",
	"life_inv_flecheg",	
	"life_inv_fleched",
	"life_inv_plutoniumore",
	"life_inv_plutonium_r",
	"life_inv_feuilletabac",
	"life_inv_paquetcigarette",
	"life_inv_fencecutters"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_adac_car","adac"],
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_rebel2","civ"],
	["license_civ_rebel3","civ"],
	["license_civ_rebel4","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["licence_civ_dona1","civ"],
    ["licence_civ_dona2","civ"],
    ["licence_civ_dona3","civ"],
	["licence_civ_dona4","civ"],
    ["licence_civ_journaliste","civ"],
	["license_civ_argent","civ"],
	["license_civ_charbon","civ"],
	["licence_civ_detective","civ"],
	["license_civ_meth","civ"],
	["licence_civ_plutonium","civ"],
	["licence_civ_cigarette","civ"],
	["licence_civ_LSA","civ"],
	["licence_civ_gt","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["kitmeth",10000],["crystalmeth",15000],["crystalmethpur",20000],["feuilletabac",3000],["paquetcigarette",3000],["marijuana",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["water",5],
	["coffee",0],
	["turtlesoup",1000],
	["donuts",0],
	["marijuana",3000],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["zipties",2],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",3500],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",0],
	["cement",1950],
	["goldbar",95000],
	["argentr",2100],
	["charbonr",1150],
	["kitmeth",1000],
	["crystalmethpur",15000],
	["gpstracker",1000],
	["mur",1500],
	["sac",1500],
	["cone",50],
	["barre",1000],	
	["lightr",50],
	["lightg",50],	
	["lighty",50],		
	["flecheg",100],
	["plutonium_r",100],
	["paquetcigarette",100],
	["fleched",100],
	["fence_cut",10000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtlesoup",2500],
	["donuts",0],
	["coffee",0],
	["tbacon",75],
	["lockpick",2500],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["zipties",1000],
	["spikeStrip",500],
	["blastingcharge",80000],
	["boltcutter",7500],
	["defusekit",1000],
	["storagesmall",200000],
	["storagebig",450000],
	["kitmeth",2000],
	["gpstracker",5000],
	["mur",2000],
	["sac",2000],
	["cone",100],
	["barre",1500],	
	["lightr",100],
	["lightg",100],	
	["lighty",100],
	["flecheg",200],
	["fleched",200],
	["fence_cut",20000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",2000],
	["C_Hatchback_01_F",2000],
	["C_Offroad_01_F", 2000],
	["B_G_Offroad_01_F",2000],
	["C_SUV_01_F",2000],
	["C_Van_01_transport_F",2000],
	["C_Hatchback_01_sport_F",2000],
	["C_Van_01_fuel_F",2000],
	["I_Heli_Transport_02_F",2000],
	["C_Van_01_box_F",2000],
	["I_Truck_02_transport_F",2000],
	["I_Truck_02_covered_F",2000],
	["B_Truck_01_transport_F",2000],
	["B_Truck_01_box_F",2000],
	["O_MRAP_02_F",2000],
	["B_Heli_Light_01_F",2000],
	["O_Heli_Light_02_unarmed_F",2000],
	["C_Rubberboat",2000],
	["C_Boat_Civil_01_F",2000],
	["B_Boat_Transport_01_F",2000],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",2000],
	["O_MRAP_02_hmg_F",2000],
	["B_SDV_01_F",2000],
	["B_MRAP_01_F",2000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",5000],
    ["C_Kart_01_Fuel_F",5000],
    ["C_Kart_01_Vrana_F",5000],
    ["C_Kart_01_Red_F",5000],
	["O_G_Quadbike_01_F",1000],
	["O_G_Offroad_01_F",1500],
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_F",10000],
	["C_Hatchback_01_sport_F",30000],
	["C_Offroad_01_F",5000],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Van_01_box_F",25000],
	["C_Van_01_fuel_F",25000],
	["I_Truck_02_transport_F",45000],
	["I_Truck_02_covered_F",45000],
	["I_Truck_02_box_F",450000],
	["B_Truck_01_transport_F",50000],
	["B_Truck_01_box_F",50000],
	["O_Truck_03_device_F",60000],
	["O_Truck_03_covered_F",70000],
	["O_Truck_03_fuel_F",70000],
	["O_Truck_03_ammo_F",70000],
	["O_Truck_03_transport_F",70000],
	["B_Truck_01_mover_F",50000],
	["B_Truck_01_covered_F",50000],
	["O_Truck_02_Ammo_F",85000],
	["O_Truck_02_fuel_F",75000],
	["B_G_Offroad_01_F",15000],
	["O_G_Offroad_01_armed_F",600000],
	["O_MRAP_02_F",70000],
	["B_MRAP_01_F",10000],
	["B_MRAP_01_hmg_F",10000],
	["I_MRAP_03_F",10000],
	["O_MRAP_02_hmg_F",700000],
	["B_Heli_Light_01_F",75000],
	["B_Heli_Attack_01_F",10000],
	["O_Heli_Light_02_unarmed_F",80000],
	["I_Heli_Transport_02_F",50000],
	["I_Heli_light_03_unarmed_F",10000],
	["B_Heli_Transport_01_F",10000],
	["C_Heli_Light_01_civil_F",50000],
	["O_Heli_Transport_04_F",50000],
	["O_Heli_Transport_04_bench_F",50000],
	["O_Heli_Transport_04_covered_F",50000],
	["O_Heli_Transport_04_box_F",50000],
	["O_Heli_Transport_04_medevac_F",20000],
	["C_Rubberboat",10000],
	["I_G_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_F",10000],
	["B_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_police_F",10000],
	["B_Boat_Armed_01_minigun_F",10000],
	["B_SDV_01_F",10000]
];
__CONST__(life_garage_sell,life_garage_sell);

life_assur_prices =
[
	["C_Kart_01_Blu_F",5000],
    ["C_Kart_01_Fuel_F",5000],
    ["C_Kart_01_Vrana_F",5000],
    ["C_Kart_01_Red_F",5000],
	["O_G_Quadbike_01_F",1000],
	["O_G_Offroad_01_F",1500],
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_F",10000],
	["C_Hatchback_01_sport_F",30000],
	["C_Offroad_01_F",5000],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Van_01_box_F",25000],
	["C_Van_01_fuel_F",25000],
	["I_Truck_02_transport_F",45000],
	["I_Truck_02_covered_F",45000],
	["I_Truck_02_box_F",450000],
	["B_Truck_01_transport_F",50000],
	["B_Truck_01_box_F",50000],
	["O_Truck_03_device_F",60000],
	["O_Truck_03_covered_F",70000],
	["O_Truck_03_fuel_F",70000],
	["O_Truck_03_ammo_F",70000],
	["O_Truck_03_transport_F",70000],
	["B_Truck_01_mover_F",50000],
	["B_Truck_01_covered_F",50000],
	["O_Truck_02_Ammo_F",85000],
	["O_Truck_02_fuel_F",75000],
	["B_G_Offroad_01_F",15000],
	["O_G_Offroad_01_armed_F",600000],
	["O_MRAP_02_F",70000],
	["B_MRAP_01_F",10000],
	["B_MRAP_01_hmg_F",10000],
	["I_MRAP_03_F",10000],
	["O_MRAP_02_hmg_F",700000],
	["B_Heli_Light_01_F",75000],
	["B_Heli_Attack_01_F",10000],
	["O_Heli_Light_02_unarmed_F",80000],
	["I_Heli_Transport_02_F",50000],
	["I_Heli_light_03_unarmed_F",10000],
	["B_Heli_Transport_01_F",10000],
	["C_Heli_Light_01_civil_F",50000],
	["O_Heli_Transport_04_F",50000],
	["O_Heli_Transport_04_bench_F",50000],
	["O_Heli_Transport_04_covered_F",50000],
	["O_Heli_Transport_04_box_F",50000],
	["O_Heli_Transport_04_medevac_F",20000],
	["C_Rubberboat",10000],
	["I_G_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_F",10000],
	["B_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_police_F",10000],
	["B_Boat_Armed_01_minigun_F",10000],
	["B_SDV_01_F",10000]
];
__CONST__(life_assur_prices,life_assur_prices);