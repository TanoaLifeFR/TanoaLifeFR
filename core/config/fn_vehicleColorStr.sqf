/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge Foncé";};
			case 5: {_color = "Bleu / Blanc";};
			case 6: {_color = "Noir";};
			case 7: {_color = "Securite";};
			case 8: {_color = "Gendarmerie";};
			case 9: {_color = "Noir Flamme";};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Verte";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu Foncée";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanche";};
			case 6: {_color = "Grise";};
			case 7: {_color = "Noir";};
			case 8: {_color = "Gendarmerie";};
			case 9: {_color = "BAC";};
			case 10: {_color = "Requin";};
			case 11: {_color = "Asiimov";};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Bleu Foncé";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Noir / Blanche";};
			case 4: {_color = "Désert";};
			case 5: {_color = "Verte";};
			case 6: {_color = "Gendarmerie";};
			case 7: {_color = "BAC";};
			case 8: {_color = "Requin";};
			case 9: {_color = "Asiimov";};
			case 10: {_color = "BAC";};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge Foncé";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Orange";};		
			case 4: {_color = "Gendarmerie";};
			case 5: {_color = "Securite";};
			case 6: {_color = "Monster";};
			case 7: {_color = "Neon";};
			case 8: {_color = "Simpson";};
			case 9: {_color = "Sponsorisé";};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc";};
			case 1: {_color = "Rouge";};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc";};
			case 1: {_color = "Rouge";};
		};
	};
	
	case "B_Quadbike_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Marron";};
			case 1: {_color = "Digi Desert";};
			case 2: {_color = "Noir";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge";};
			case 5: {_color = "Blanc";};
			case 6: {_color = "Digi Vert";};
			case 7: {_color = "Hunter Camo";};
			case 8: {_color = "Rebelle Camo";};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Civ Bleu";};
			case 2: {_color = "Civ Rouge";};
			case 3: {_color = "Digi Vert";};
			case 4: {_color = "Blueline";};
			case 5: {_color = "Elliptical";};
			case 6: {_color = "Furious";};
			case 7: {_color = "Jeans Blue";};
			case 8: {_color = "Speedy Redline";};
			case 9: {_color = "Sunset";};
			case 10: {_color = "Vrana";};
			case 11: {_color = "Waves Blue";};
			case 12: {_color = "Rebelle Digital";};
			case 13: {_color = "BAC";};
			case 14: {_color = "Gendarmerie";};
		};
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Gray"};
			case 15: {_color = "Shadow"};
			case 16: {_color = "Wasp"};
			case 17: {_color = "Securite"};
			case 18: {_color = "BAC"};
		};
	};
	
	case "B_Heli_Light_01_stripped_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Gray"};
			case 15: {_color = "Shadow"};
			case 16: {_color = "Wasp"};
			case 17: {_color = "Securite"};
			case 18: {_color = "BAC"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Blanc / Bleu";};
			case 2: {_color = "Digi Vert";};
			case 3: {_color = "Desert Digi";};
			case 4: {_color = "Securite";};
			case 5: {_color = "Redbull";};
			case 6: {_color = "Gendarmerie";};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie";};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "GIGN";};
			case 1: {_color = "Gendarmerie";};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
		};
	};
	
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange";};
			case 1: {_color = "Noir";};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange";};
			case 1: {_color = "Noir";};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc";};
			case 1: {_color = "Rouge";};
			case 2: {_color = "Noir";};
			case 3: {_color = "Sécurite";};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion";};
			case 1: {_color = "Dahoman";};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
		};
	};
	
	case "O_Heli_Transport_04_medevac_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir Médical";};
		};
	};
	
	case "O_G_Offroad_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Altis Protection";};
			case 1: {_color = "Altis Protection 2";};
		};
	};
};

_color;