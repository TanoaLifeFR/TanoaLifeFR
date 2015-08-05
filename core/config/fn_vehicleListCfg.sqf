#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = 
		[
			["C_Kart_01_Blu_F",75000],
			["C_Kart_01_Fuel_F",75000],
			["C_Kart_01_Red_F",75000],
			["C_Kart_01_Vrana_F",75000]
		];
	};
	
	case "med_shop":
	{
		if(__GETC__(life_mediclevel) > 1) then
		{
		_return set[count _return,
		["C_Van_01_box_F",10000]];
		};
			
			if(__GETC__(life_mediclevel) > 3) then
			{
			_return set[count _return,
			["C_Offroad_01_F",10000]];
			};
	};
	
	case "car_merc":
	{
		if(__GETC__(life_adaclevel) > 1) then
		{
		_return set[count _return,
		["I_MRAP_03_F",60000]];
		_return set[count _return,
		["O_G_Offroad_01_F",10000]];
		};
	};
	
	case "journa_shop":
	{
		_return = 
		[
			["B_Quadbike_01_F",1750],
			["C_Hatchback_01_sport_F",20000],
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",25000]
		];
	};
	
	case "dona1_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1550],
			["C_Hatchback_01_F",11000],
			["C_Hatchback_01_sport_F",80000],
			["C_Offroad_01_F",15000],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",55000],
			["C_Van_01_fuel_F",55000],
			["C_Van_01_box_F",80000],
			["I_Truck_02_transport_F",150000],
			["O_Truck_02_fuel_F",150000],
			["I_Truck_02_covered_F",184000],
			["O_Truck_02_Ammo_F",184000],
			["B_Truck_01_mover_F",310000],
			["B_Truck_01_transport_F",334000],
			["B_Truck_01_covered_F",357000],
			["B_Truck_01_box_F",424000],
			["O_Truck_03_transport_F",514000],
			["O_Truck_03_ammo_F",514000],
			["O_Truck_03_fuel_F",570000],
			["O_Truck_03_covered_F",570000],
			["B_Heli_Light_01_F",80000],
			["C_Heli_Light_01_civil_F",280000],
			["O_Heli_Light_02_unarmed_F",370000],
			["O_G_Offroad_01_armed_F",1400000],
			["O_MRAP_02_F",500000]
		];
	};
	
	case "dona2_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1250],
			["C_Hatchback_01_F",8000],
			["C_Hatchback_01_sport_F",60000],
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",30000],
			["C_Van_01_transport_F",45000],
			["C_Van_01_fuel_F",45000],
			["C_Van_01_box_F",65000],
			["I_Truck_02_transport_F",125000],
			["O_Truck_02_fuel_F",125000],
			["I_Truck_02_covered_F",150000],
			["O_Truck_02_Ammo_F",150000],
			["B_Truck_01_mover_F",290000],
			["B_Truck_01_transport_F",315000],
			["B_Truck_01_covered_F",325000],
			["B_Truck_01_box_F",400000],
			["O_Truck_03_transport_F",490000],
			["O_Truck_03_ammo_F",490000],
			["O_Truck_03_fuel_F",520000],
			["O_Truck_03_covered_F",520000],
			["O_Truck_03_device_F",1700000],
			["B_Heli_Light_01_F",50000],
			["C_Heli_Light_01_civil_F",240000],
			["O_Heli_Light_02_unarmed_F",320000],
			["B_Heli_Transport_03_unarmed_F",700000],
			["I_Heli_Transport_02_F",1400000],
			["O_G_Offroad_01_armed_F",1300000],
			["O_MRAP_02_F",450000]
		];
	};
	
	case "dona3_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",900],
			["C_Hatchback_01_F",6000],
			["C_Hatchback_01_sport_F",40000],
			["C_Offroad_01_F",8000],
			["C_SUV_01_F",22000],
			["C_Van_01_transport_F",32000],
			["C_Van_01_fuel_F",33000],
			["C_Van_01_box_F",55000],
			["I_Truck_02_transport_F",100000],
			["O_Truck_02_fuel_F",100000],
			["I_Truck_02_covered_F",125000],
			["O_Truck_02_Ammo_F",125000],
			["B_Truck_01_mover_F",270000],
			["B_Truck_01_transport_F",300000],
			["B_Truck_01_covered_F",310000],
			["B_Truck_01_box_F",370000],
			["O_Truck_03_transport_F",450000],
			["O_Truck_03_ammo_F",450000],
			["O_Truck_03_fuel_F",490000],
			["O_Truck_03_covered_F",490000],
			["O_Truck_03_device_F",1400000],
			["B_Heli_Light_01_F",30000],
			["C_Heli_Light_01_civil_F",200000],
			["O_Heli_Light_02_unarmed_F",280000],
			["I_Heli_Transport_02_F",1200000],
			["O_Heli_Transport_04_F",900000],
			["B_Heli_Transport_03_unarmed_F",500000],
			["O_G_Offroad_01_armed_F",1200000],
			["O_MRAP_02_F",400000]
		];
	};
	
	case "dona4_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",400],
			["C_Hatchback_01_F",3000],
			["C_Hatchback_01_sport_F",20000],
			["C_Offroad_01_F",4000],
			["C_SUV_01_F",15000],
			["C_Van_01_transport_F",20000],
			["C_Van_01_fuel_F",21000],
			["C_Van_01_box_F",30000],
			["I_Truck_02_transport_F",65000],
			["O_Truck_02_fuel_F",67000],
			["I_Truck_02_covered_F",100000],
			["O_Truck_02_Ammo_F",100000],
			["B_Truck_01_mover_F",240000],
			["B_Truck_01_transport_F",260000],
			["B_Truck_01_covered_F",270000],
			["B_Truck_01_box_F",320000],
			["O_Truck_03_transport_F",380000],
			["O_Truck_03_ammo_F",380000],
			["O_Truck_03_fuel_F",410000],
			["O_Truck_03_covered_F",410000],
			["O_Truck_03_device_F",500000],
			["B_Heli_Light_01_F",20000],
			["C_Heli_Light_01_civil_F",150000],
			["O_Heli_Light_02_unarmed_F",200000],
			["I_Heli_Transport_02_F",1000000],
			["O_Heli_Transport_04_F",750000],
			["O_Heli_Transport_04_bench_F",700000],
			["O_Heli_Transport_04_covered_F",1100000],
			["O_Heli_Transport_04_box_F",1200000],
			["B_Heli_Transport_03_unarmed_F",400000],
			["O_G_Offroad_01_armed_F",1000000],
			["O_MRAP_02_F",300000]
		];
	};
	
	case "med_air_hs":
	{
		if(__GETC__(life_mediclevel) > 2) then
		{
		_return set[count _return,
		["C_Heli_Light_01_civil_F",45000]];
		};
			if(__GETC__(life_mediclevel) > 4) then
			{
			_return set[count _return,
			["B_Heli_Transport_03_unarmed_F",80000]];
			_return set[count _return,
			["O_Heli_Transport_04_medevac_F",90000]];
			};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1750],
			["C_Hatchback_01_F",12500],
			["C_Offroad_01_F",20000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",60000],
			["C_Van_01_fuel_F",65000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",90000],
			["I_Truck_02_transport_F",170000],
			["O_Truck_02_fuel_F",170000],
			["I_Truck_02_covered_F",194000],
			["O_Truck_02_Ammo_F",194000],
			["B_Truck_01_mover_F",330000],
			["B_Truck_01_transport_F",354000],
			["B_Truck_01_covered_F",367000],
			["B_Truck_01_box_F",434000],
			["O_Truck_03_transport_F",534000],
			["O_Truck_03_ammo_F",534000],
			["O_Truck_03_fuel_F",600000],
			["O_Truck_03_covered_F",600000]
		];	
	};
	
	case "reb_car":
	{
		_return set[count _return,
		["O_G_Quadbike_01_F",500]];
		_return set[count _return,
		["O_G_Offroad_01_F",18000]];
		_return set[count _return,
		["C_SUV_01_F",35000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",100000]];
		_return set[count _return,
		["O_G_Offroad_01_armed_F",1500000]];
		_return set[count _return,
		["O_MRAP_02_F",800000]];
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		_return set[count _return,
		["B_Heli_Light_01_stripped_F",200000]];
		_return set[count _return,
		["C_Heli_Light_01_civil_F",250000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",400000]];
		_return set[count _return,
		["B_Heli_Transport_01_camo_F",12000000]];
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Hatchback_01_F",5000]];
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		};
			
			if(__GETC__(life_coplevel) > 4) then
			{
			_return set[count _return,
			["C_Hatchback_01_sport_F",80000]];
			};
		
				if(__GETC__(life_coplevel) > 6) then
				{
				_return set[count _return,
				["B_MRAP_01_F",30000]];
				};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",167000],
			["C_Heli_Light_01_civil_F",300000],
			["O_Heli_Light_02_unarmed_F",567000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 4) then
		{
		_return pushBack
		["B_Heli_Light_01_F",40000];
		_return pushBack
		["C_Heli_Light_01_civil_F",60000];
		_return pushBack
		["B_Heli_Light_01_stripped_F",60000];
		};
			
		    if(__GETC__(life_coplevel) > 8) then
			{
			_return pushBack
			["O_Heli_Light_02_unarmed_F",80000];
			};

				if(__GETC__(life_coplevel) > 11) then
				{
				_return pushBack
				["I_Heli_light_03_unarmed_F",100000];
				_return pushBack
				["B_Heli_Transport_01_F",330000];
				};
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",15000],
			["C_Boat_Civil_01_police_F",30000],
			["B_Boat_Armed_01_minigun_F",50000],
			["B_SDV_01_F",100000]
		];
	};	
	
	case "journaliste_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1750],
			["C_Hatchback_01_F",12500],
			["C_Offroad_01_F",20000],
			["C_SUV_01_F",40000]
		];
	};
	
	case "gt": // Global Trust
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",120000],
			["O_Truck_02_fuel_F",120000],
			["I_Truck_02_covered_F",144000],
			["O_Truck_02_Ammo_F",144000],
			["B_Truck_01_mover_F",300000],
			["B_Truck_01_transport_F",314000],
			["B_Truck_01_covered_F",327000],
			["B_Truck_01_box_F",400000],
			["O_Truck_03_transport_F",500000],
			["O_Truck_03_ammo_F",500000],
			["O_Truck_03_fuel_F",550000],
			["O_Truck_03_covered_F",550000]
		];	
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",20000],
			["C_Boat_Civil_01_F",40000],
			["C_Boat_Civil_01_rescue_F",50000]
		];
	};
};	

_return;