#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/

private["_shop"];
diag_log format["@@@ %1", __GETC__(life_coplevel)];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_gav":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			default
			{
				["Armes Gendarme Apprenti Volontaire",
					[
						["hgun_P07_snds_F","Tazer",500],
						["16Rnd_9x21_Mag",nil,50],
						["muzzle_snds_L",nil,0],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_Gendarme":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 1): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			default
			{
				["Armes Gendarme",
					[
						["hgun_P07_snds_F","Tazer",500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,50],
						["muzzle_snds_L",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["optic_MRCO",nil,0],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};

	case "cop_Brigadier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 2): {"Vous n'etes pas un Brigadier pour utiliser ce vendeur!"};
			default
			{
				["Armes Brigadier",
					[
						["SMG_02_F",nil,10000],
						["30Rnd_9x21_Mag",nil,50],
						["muzzle_snds_L",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["optic_MRCO",nil,0],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};

	case "cop_BrigadierChef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 3): {"Vous n'etes pas un Brigadier Chef pour utiliser ce vendeur!"};
			default
			{
				["Armes Brigadier Chef",
					[
						["arifle_Mk20_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,50],
						["muzzle_snds_M",nil,50],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_Sergent":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 4): {"Vous n'etes pas Sergent pour utiliser ce vendeur!"};
			default
			{
				["Armes Sergent",
					[
						["arifle_TRG21_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,50],
						["muzzle_snds_M",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_SergentChef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 5): {"Vous n'etes pas Sergent Chef pour utiliser ce vendeur!"};
			default
			{
				["Armes Sergent Chef",
					[
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["muzzle_snds_H",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_Adjudant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 6): {"Vous n'etes pas un Adjudant pour utiliser ce vendeur!"};
			default
			{
				["Armes Adjudant",
					[
						["arifle_MX_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["muzzle_snds_H",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_AdjudantChef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 7): {"Vous n'etes pas Adjudant Chef pour utiliser ce vendeur!"};
			default
			{
				["Armes Adjudant Chef",
					[
						["arifle_MXM_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["muzzle_snds_H",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_Major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 8): {"Vous n'etes pas Major pour utiliser ce vendeur!"};
			default
			{
				["Armes Major",
					[
						["arifle_MX_SW_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
					    ["100Rnd_65x39_caseless_mag_Tracer",nil,50],
						["100Rnd_65x39_caseless_mag",nil,50],
						["muzzle_snds_H",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_SousLieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 9): {"Vous n'etes pas Sous Lieutenant pour utiliser ce vendeur!"};
			default
			{
				["Armes Sous Lieutenant",
					[
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["muzzle_snds_H_MG",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_Lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 10): {"Vous n'etes pas un Lieutenant pour utiliser ce vendeur!"};
			default
			{
				["Armes Lieutenant",
					[
						["srifle_DMR_06_olive_F","MK14 Olive",50000],
						["20Rnd_762x51_Mag","Chargeur MK14",200],
						["srifle_EBR_F",nil,30000],
						["20Rnd_762x51_Mag",nil,500],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["optic_KHS_blk","Kahlia Noir",6000],
						["muzzle_snds_B",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_Capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 11): {"Vous n'etes pas un Capitaine pour utiliser ce vendeur!"};
			default
			{
				["Armes Capitaine",
					[
						["LMG_Zafir_F",nil,55000],
						["150Rnd_762x54_Box",nil,500],
						["150Rnd_762x54_Box_Tracer",nil,500],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["B_UavTerminal",nil,1000],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_Colonel":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 12): {"Vous n'etes pas un Colonel pour utiliser ce vendeur!"};
			default
			{
				["Armes Colonel",
					[
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",260000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",200],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["B_UavTerminal",nil,1000],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_Commandant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 13): {"Vous n'etes pas un Commandant pour utiliser ce vendeur!"};
			default
			{
				["Armes Commandant",
					[
						["srifle_DMR_03_F","MK1-EMR Noir",70000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",200],
						["srifle_LRR_F",nil,100000],
						["7Rnd_408_Mag",nil,50],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["optic_KHS_blk","Kahlia Noir",6000],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["B_UavTerminal",nil,1000],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_General":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 14): {"Vous n'etes pas un Général pour utiliser ce vendeur!"};
			default
			{
				["Armes Général",
					[
						["srifle_DMR_05_blk_F","Cyrus",100000],
						["10Rnd_93x64_DMR_05_Mag","Chargeur Cyrus",500],
						["arifle_Katiba_F",nil,60000],
						["30Rnd_65x39_caseless_green",nil,50],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["optic_KHS_blk","Kahlia Noir",6000],
						["muzzle_snds_H",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["B_UavTerminal",nil,1000],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_Commissaire":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 15): {"Vous n'etes pas un Commissaire pour utiliser ce vendeur!"};
			default
			{
				["Armes Commissaire",
					[
						["srifle_DMR_01_F",nil,75000],
						["10Rnd_762x51_Mag",nil,100],
						["muzzle_snds_B",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1500],
						["B_UavTerminal",nil,1000],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_Bri":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 16): {"Vous n'etes pas de la BAC pour utiliser ce vendeur!"};
			default
			{
				["Equipement de la BAC",
					[
						["hgun_Pistol_heavy_01_F","4Five Normal",5000],
						["hgun_Pistol_heavy_01_snds_F","4Five Silencieux",5000],
						["hgun_Pistol_heavy_01_MRD_F","4Five Viseur",5000],
						["11Rnd_45ACP_Mag","Chargeur 4Five",500],
						["hgun_ACPC2_F","ACP45 Normal",5000],
						["hgun_ACPC2_snds_F","ACP45 Silencieux",5000],
						["9Rnd_45ACP_Mag","Chargeur ACP45",500],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,500],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_GIGN":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'etes pas un Gendarme pour utiliser ce vendeur!"};
			case (__GETC__(life_coplevel) < 17): {"Vous n'etes pas du GIGN pour utiliser ce vendeur!"};
			default
			{
				["Armes GIGN",
					[
						["arifle_MXC_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["arifle_MX_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["arifle_MX_SW_Black_F",nil,30000],
						["100Rnd_65x39_caseless_mag",nil,50],
						["100Rnd_65x39_caseless_mag_Tracer",nil,50],
						["arifle_MXM_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["srifle_LRR_F",nil,100000],
						["7Rnd_408_Mag",nil,50],
						["srifle_GM6_F",nil,100000],
						["5Rnd_127x108_Mag",nil,50],
						["5Rnd_127x108_APDS_Mag",nil,50],
						["srifle_DMR_05_blk_F","Cyrus",100000],
						["10Rnd_93x64_DMR_05_Mag","Chargeur Cyrus",500],
						["srifle_DMR_03_F","MK1-EMR Noir",60000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",200],
						["srifle_DMR_06_olive_F","MK14 Olive",70000],
						["20Rnd_762x51_Mag","Chargeur MK14",200],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["optic_KHS_blk","Kahlia Noir",6000],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_L",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["optic_Arco",nil,0],
						["optic_Hamr",nil,0],
						["optic_Aco",nil,0],
						["optic_ACO_grn",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["optic_NVS",nil,0],
						["optic_Nightstalker",nil,0],
						["optic_tws",nil,0],
						["optic_tws_mg",nil,0],
						["SmokeShellBlue","Gaz Lacrimo",600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,1200],
						["NVGoggles_OPFOR",nil,1000],
						["B_UavTerminal","Terminal Drone",500],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "med_Brancardier":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'etes pas de la Securité Civil pour utiliser ce vendeur!"};
			case (__GETC__(life_mediclevel) < 1): {"Vous n'etes pas un Brancardier pour utiliser ce vendeur!"};
			default {
				["Equipement Brancardier",
					[
						["U_Rangemaster","Tenue Officiel",500],
						["B_Carryall_khk","Sac de securité",6000],
						["ItemGPS",nil,300],
						["Rangefinder",nil,2000],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "med_Secouriste":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'etes pas de la Securité Civil pour utiliser ce vendeur!"};
			case (__GETC__(life_mediclevel) < 2): {"Vous n'etes pas un Secouriste pour utiliser ce vendeur!"};
			default {
				["Equipement Secouriste",
					[
						["U_Rangemaster","Tenue Officiel",500],
						["B_Carryall_khk","Sac de securité",6000],
						["ItemGPS",nil,300],
						["Rangefinder",nil,2000],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "med_Urgentiste":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'etes pas de la Securité Civil pour utiliser ce vendeur!"};
			case (__GETC__(life_mediclevel) < 3): {"Vous n'etes pas un Urgentiste pour utiliser ce vendeur!"};
			default {
				["Equipement Urgentiste",
					[
						["U_Rangemaster","Tenue Officiel",500],
						["B_Carryall_khk","Sac de securité",6000],
						["ItemGPS",nil,300],
						["Rangefinder",nil,2000],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "med_Médecin":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'etes pas de la Securité Civil pour utiliser ce vendeur!"};
			case (__GETC__(life_mediclevel) < 4): {"Vous n'etes pas un Médecin pour utiliser ce vendeur!"};
			default {
				["Equipement Médecin",
					[
						["U_Rangemaster","Tenue Officiel",500],
						["B_Carryall_khk","Sac de securité",6000],
						["ItemGPS",nil,300],
						["Rangefinder",nil,2000],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "med_Chirurgien":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'etes pas de la Securité Civil pour utiliser ce vendeur!"};
			case (__GETC__(life_mediclevel) < 5): {"Vous n'etes pas un Chirurgien pour utiliser ce vendeur!"};
			default {
				["Equipement Chirurgien",
					[
						["U_Rangemaster","Tenue Officiel",500],
						["B_Carryall_khk","Sac de securité",6000],
						["ItemGPS",nil,300],
						["Rangefinder",nil,2000],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil pour acceder a ce vendeur!"};
			case (!license_civ_rebel): {"Vous n'avez pas la Licence rebelle pour acceder a ce vendeur!"};
			default
			{
				["Armuerie Rebelle Altis",
					[
						["arifle_Katiba_F",nil,70000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,3000],
						["arifle_SDAR_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,2000],
						["arifle_TRG21_F",nil,60000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["SmokeShellGreen","Fumigene",1000],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_acp",nil,500],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_SOS",nil,20000],
						["optic_DMS",nil,7000],
						["optic_LRPS",nil,20000],
						["optic_MRCO",nil,5000],
						["optic_NVS",nil,2000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,2000],
						["Rangefinder",nil,2000],
						["FirstAidKit",nil,500],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			case (!license_civ_rebel): {"Vous n'avez pas la Licence rebelle 2 pour acceder a ce vendeur!"};
			default
			{
				["Armuerie Rebelle Altis 2",
					[
						["srifle_EBR_F",nil,150000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_DMR_01_F",nil,115000],
						["10Rnd_762x54_Mag",nil,4000],
						["srifle_DMR_06_camo_F","MK14 Camo",180000],
						["20Rnd_762x51_Mag","Chargeur MK14",2500],
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",260000],
						["srifle_DMR_03_woodland_F","MK1-EMR Wood",260000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",2500],
						["SmokeShellGreen","Fumigene",1000],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_acp",nil,500],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_SOS",nil,20000],
						["optic_DMS",nil,7000],
						["optic_LRPS",nil,20000],
						["optic_MRCO",nil,5000],
						["optic_NVS",nil,2000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,2000],
						["Rangefinder",nil,2000],
						["FirstAidKit",nil,500],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			case (!license_civ_rebel): {"Vous n'avez pas la Licence rebelle 3 pour acceder a ce vendeur!"};
			default
			{
				["Armuerie Rebelle Altis 3",
					[
						["LMG_Zafir_F",nil,450000],
						["150Rnd_762x54_Box",nil,2000],
						["150Rnd_762x54_Box_Tracer",nil,3000],
						["LMG_Mk200_F",nil,400000],
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["SmokeShellGreen","Fumigene",1000],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_acp",nil,500],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_SOS",nil,20000],
						["optic_DMS",nil,7000],
						["optic_LRPS",nil,20000],
						["optic_MRCO",nil,5000],
						["optic_NVS",nil,2000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,2000],
						["Rangefinder",nil,2000],
						["FirstAidKit",nil,500],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			case (!license_civ_rebel): {"Vous n'avez pas la Licence rebelle 4 pour acceder a ce vendeur!"};
			default
			{
				["Armuerie Rebelle Altis 4",
					[
						["srifle_DMR_02_camo_F","MAR-10",800000],
						["10Rnd_338_Mag","Chargeur MAR-10",2500],
						["srifle_LRR_F","M320",900000],
						["7Rnd_408_Mag",nil,2500],
						["SmokeShellGreen","Fumigene",1000],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_acp",nil,500],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_SOS",nil,20000],
						["optic_DMS",nil,7000],
						["optic_LRPS",nil,20000],
						["optic_MRCO",nil,5000],
						["optic_NVS",nil,2000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,2000],
						["Rangefinder",nil,2000],
						["FirstAidKit",nil,500],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "merc":
	{
		switch(true) do
		{
			case (playerSide != east): {"Vous n'etes pas un membre d'Altis Protection pour acceder a ce vendeur!"};
			case (__GETC__(life_adaclevel) < 1): {"Vous n'etes pas un membre d'Altis Protection pour utiliser ce vendeur!"};
			default
			{
				["Altis Protection",
					[
						["arifle_MX_SW_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
					    ["100Rnd_65x39_caseless_mag_Tracer",nil,50],
						["100Rnd_65x39_caseless_mag",nil,50],
						["arifle_MXM_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,50],
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x54_Box",nil,2000],
						["150Rnd_762x54_Box_Tracer",nil,3000],
						["srifle_EBR_F",nil,100000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_DMR_06_camo_F","MK14 Camo",130000],
						["20Rnd_762x51_Mag","Chargeur MK14",500],
						["srifle_DMR_03_khaki_F","MK1-Vert",130000],
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",130000],
						["srifle_DMR_03_woodland_F","MK1-EMR Wood",130000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",2500],
						["srifle_DMR_02_camo_F","MAR-10",200000],
						["10Rnd_338_Mag","Chargeur MAR-10",500],
						["SmokeShellGreen","Fumigene",1000],
						["bipod_01_F_blk","Bipod Noir",6000],
						["bipod_02_F_hex","Bipod Hex",6000],
						["bipod_01_F_mtp","Bipod Mtp",6000],
						["bipod_03_F_oli","Bipod Olive",6000],
						["bipod_01_F_snd","Bipod Sable",6000],
						["bipod_02_F_tan","Bipod Tan",6000],
						["optic_AMS_snd","AMS Sable",6000],
						["optic_AMS_khk","AMS Khaki",6000],
						["optic_KHS_tan","Kahlia Tan",6000],
						["optic_KHS_hex","Kahlia Hex",6000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_acp",nil,5000],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_SOS",nil,20000],
						["optic_DMS",nil,7000],
						["optic_MRCO",nil,5000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,2000],
						["ItemCompass",nil,500],
						["ItemWatch",nil,500],
						["ItemMap",nil,500],
						["Rangefinder",nil,2000],
						["FirstAidKit",nil,500],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil pour acceder a ce vendeur!"};
			case (!license_civ_gun): {"Vous n'avez pas la licence d'armes a feu!"};
			default
			{
				["Armuerie de Billy",
					[
						["SMG_01_F",nil,18000],
						["optic_Aco_smg",nil,500],
						["optic_Holosight_smg",nil,500],
						["muzzle_snds_acp",nil,500],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,250],
						["hgun_Rook40_F",nil,6500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,9800],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,11500],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,75],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			default
			{
				["Armuerie du GanG",
					[
						["arifle_Katiba_F",nil,80000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,3000],
						["arifle_SDAR_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1500],
						["arifle_TRG21_F",nil,80000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["LMG_Zafir_F",nil,500000],
						["150Rnd_762x51_Box",nil,3000],
						["150Rnd_762x51_Box_Tracer",nil,4500],
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,500],
						["srifle_DMR_01_F",nil,400000],
						["10Rnd_762x51_Mag",nil,3000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_H_MG",nil,5000],
						["muzzle_snds_acp",nil,500],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_MRCO",nil,5000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["optic_DMS",nil,7000],
						["ItemRadio","Téléphone",100],
						["Binocular",nil,100],
						["Rangefinder",nil,100],
						["FirstAidKit",nil,100],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "journaliste":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas un Civil pour acceder a ce vendeur!"};
			case (!licence_civ_journaliste): {"Vous n'etes pas un Journaliste"};
			default
			{
				["Magasin Journaliste",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,3000],
						["ItemRadio","Téléphone",100]
					]	
				];		
			};
		};
	};

	case "detective":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas un Civil pour acceder a ce vendeur!"};
			case (!licence_civ_detective): {"Vous n'etes pas un Detective"};
			default
			{
				["Magasin Détective",
					[
						["hgun_ACPC2_F",nil,8000],
						["9Rnd_45ACP_Mag",nil,200],
						["hgun_Pistol_heavy_02_F",nil,8000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit","Boite a outils",17000],
						["Medikit",nil,500],
						["NVGoggles",nil,3000],
						["ItemRadio","Téléphone",100]
					]	
				];		
			};
		};
	};	
	
	case "donateur1":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil pour acceder a ce vendeur!"};
			case (!licence_civ_dona1): {"Vous n'etes pas Donateur Rang 1"};
			case (!license_civ_rebel): {"Vous n'avez pas la licence rebelle pour acceder a ce vendeur!"};
			default
			{
				["Donateur Shop Rang - 1",
					[
						["arifle_Katiba_F",nil,60000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,3000],
						["arifle_SDAR_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,2000],
						["arifle_TRG21_F",nil,60000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["LMG_Zafir_F",nil,440000],
						["150Rnd_762x54_Box",nil,2000],
						["150Rnd_762x54_Box_Tracer",nil,3000],
						["srifle_EBR_F",nil,130000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_DMR_01_F",nil,120000],
						["10Rnd_762x54_Mag",nil,4000],
						["srifle_DMR_06_camo_F","MK14 Camo",140000],
						["20Rnd_762x51_Mag","Chargeur MK14",2500],
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",230000],
						["srifle_DMR_03_woodland_F","MK1-EMR Wood",230000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",500],
						["srifle_DMR_02_camo_F","MAR-10",750000],
						["10Rnd_338_Mag","Chargeur MAR-10",500],
						["SmokeShellGreen","Fumigene",700],
						["bipod_01_F_blk","Bipod Noir",5000],
						["bipod_02_F_hex","Bipod Hex",5000],
						["bipod_01_F_mtp","Bipod Mtp",5000],
						["bipod_03_F_oli","Bipod Olive",5000],
						["bipod_01_F_snd","Bipod Sable",5000],
						["bipod_02_F_tan","Bipod Tan",5000],
						["optic_AMS_snd","AMS Sable",5000],
						["optic_AMS_khk","AMS Khaki",5000],
						["optic_KHS_tan","Kahlia Tan",5000],
						["optic_KHS_hex","Kahlia Hex",5000],
						["muzzle_snds_H",nil,300],
						["muzzle_snds_L",nil,300],
						["muzzle_snds_M",nil,300],
						["muzzle_snds_B",nil,300],
						["muzzle_snds_H_MG",nil,300],
						["optic_Arco",nil,300],
						["optic_Hamr",nil,300],
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Holosight",nil,300],
						["optic_Holosight_smg",nil,300],
						["optic_SOS",nil,500],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,300],
						["optic_MRCO",nil,300],
						["muzzle_snds_acp",nil,300],
						["optic_DMS",nil,400],
						["optic_LRPS",nil,1100],
						["optic_NVS",nil,2000],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,100],
						["FirstAidKit",nil,100],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]	
				];		
			};
		};
	};	
	
	case "donateur2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			case (!licence_civ_dona2): {"Vous n'etes pas Donateur Rang 2"};
			case (!license_civ_rebel): {"Vous n'avez pas la licence rebelle pour acceder a ce vendeur!"};
			default
			{
				["Donateur Shop Rang - 2",
					[
						["arifle_Katiba_F",nil,50000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,3000],
						["arifle_SDAR_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,2000],
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["LMG_Zafir_F",nil,430000],
						["150Rnd_762x54_Box",nil,2000],
						["150Rnd_762x54_Box_Tracer",nil,3000],
						["srifle_EBR_F",nil,120000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_DMR_01_F",nil,115000],
						["10Rnd_762x54_Mag",nil,4000],
						["srifle_DMR_06_camo_F","MK14 Camo",130000],
						["20Rnd_762x51_Mag","Chargeur MK14",2500],
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",220000],
						["srifle_DMR_03_woodland_F","MK1-EMR Wood",220000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",500],
						["srifle_DMR_02_camo_F","MAR-10",700000],
						["10Rnd_338_Mag","Chargeur MAR-10",500],
						["SmokeShellGreen","Fumigene",700],
						["bipod_01_F_blk","Bipod Noir",4000],
						["bipod_02_F_hex","Bipod Hex",4000],
						["bipod_01_F_mtp","Bipod Mtp",4000],
						["bipod_03_F_oli","Bipod Olive",4000],
						["bipod_01_F_snd","Bipod Sable",4000],
						["bipod_02_F_tan","Bipod Tan",4000],
						["optic_AMS_snd","AMS Sable",4000],
						["optic_AMS_khk","AMS Khaki",4000],
						["optic_KHS_tan","Kahlia Tan",4000],
						["optic_KHS_hex","Kahlia Hex",4000],
						["muzzle_snds_H",nil,300],
						["muzzle_snds_L",nil,300],
						["muzzle_snds_M",nil,300],
						["muzzle_snds_B",nil,300],
						["muzzle_snds_H_MG",nil,300],
						["optic_Arco",nil,300],
						["optic_Hamr",nil,300],
						["optic_Aco",nil,300],
						["optic_ACO_grn",nil,300],
						["optic_Holosight",nil,300],
						["optic_Holosight_smg",nil,300],
						["optic_SOS",nil,500],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,300],
						["optic_MRCO",nil,300],
						["muzzle_snds_acp",nil,300],
						["optic_DMS",nil,400],
						["optic_LRPS",nil,1100],
						["optic_NVS",nil,1000],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,100],
						["FirstAidKit",nil,100],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "donateur3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			case (!licence_civ_dona3): {"Vous n'etes pas Donateur Rang 3"};
			case (!license_civ_rebel): {"Vous n'avez pas la licence rebelle pour acceder a ce vendeur!"};
			default
			{
				["Donateur Shop Rang - 3",
					[
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,3000],
						["arifle_SDAR_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,2000],
						["arifle_TRG21_F",nil,40000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["LMG_Zafir_F",nil,400000],
						["150Rnd_762x54_Box",nil,2000],
						["150Rnd_762x54_Box_Tracer",nil,3000],
						["srifle_EBR_F",nil,100000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x54_Mag",nil,4000],
						["srifle_DMR_06_camo_F","MK14 Camo",100000],
						["20Rnd_762x51_Mag","Chargeur MK14",2500],
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",180000],
						["srifle_DMR_03_woodland_F","MK1-EMR Wood",180000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",500],
						["srifle_DMR_02_camo_F","MAR-10",600000],
						["10Rnd_338_Mag","Chargeur MAR-10",500],
						["SmokeShellGreen","Fumigene",700],
						["bipod_01_F_blk","Bipod Noir",3000],
						["bipod_02_F_hex","Bipod Hex",3000],
						["bipod_01_F_mtp","Bipod Mtp",3000],
						["bipod_03_F_oli","Bipod Olive",3000],
						["bipod_01_F_snd","Bipod Sable",3000],
						["bipod_02_F_tan","Bipod Tan",3000],
						["optic_AMS_snd","AMS Sable",3000],
						["optic_AMS_khk","AMS Khaki",3000],
						["optic_KHS_tan","Kahlia Tan",3000],
						["optic_KHS_hex","Kahlia Hex",3000],
						["muzzle_snds_H",nil,150],
						["muzzle_snds_L",nil,150],
						["muzzle_snds_M",nil,150],
						["muzzle_snds_B",nil,150],
						["muzzle_snds_H_MG",nil,150],
						["optic_Arco",nil,150],
						["optic_Hamr",nil,150],
						["optic_Aco",nil,150],
						["optic_ACO_grn",nil,150],
						["optic_Holosight",nil,150],
						["optic_Holosight_smg",nil,150],
						["optic_SOS",nil,300],
						["acc_flashlight",nil,150],
						["acc_pointer_IR",nil,150],
						["optic_MRCO",nil,150],
						["muzzle_snds_acp",nil,150],
						["optic_DMS",nil,300],
						["optic_LRPS",nil,900],
						["optic_NVS",nil,600],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,100],
						["FirstAidKit",nil,100],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "donateur4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas civil ou rebelle pour acceder a ce vendeur!"};
			case (!licence_civ_dona4): {"Vous n'etes pas Donateur Rang 4"};
			case (!license_civ_rebel): {"Vous n'avez pas la licence rebelle pour acceder a ce vendeur!"};
			default
			{
				["Donateur Shop Rang - 4",
					[
						["arifle_Katiba_F",nil,20000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,3000],
						["arifle_SDAR_F",nil,5000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,2000],
						["arifle_TRG21_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,2000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x54_Box",nil,2000],
						["150Rnd_762x54_Box_Tracer",nil,3000],
						["srifle_EBR_F",nil,85000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_DMR_01_F",nil,80000],
						["10Rnd_762x54_Mag",nil,4000],
						["srifle_DMR_06_camo_F","MK14 Camo",85000],
						["20Rnd_762x51_Mag","Chargeur MK14",2500],
						["srifle_DMR_03_multicam_F","MK1-EMR Camo",140000],
						["srifle_DMR_03_woodland_F","MK1-EMR Wood",140000],
						["20Rnd_762x51_Mag","Chargeur MK1-EMR",500],
						["srifle_DMR_02_camo_F","MAR-10",400000],
						["10Rnd_338_Mag","Chargeur MAR-10",500],
						["SmokeShellGreen","Fumigene",700],
						["bipod_01_F_blk","Bipod Noir",1000],
						["bipod_02_F_hex","Bipod Hex",1000],
						["bipod_01_F_mtp","Bipod Mtp",1000],
						["bipod_03_F_oli","Bipod Olive",1000],
						["bipod_01_F_snd","Bipod Sable",1000],
						["bipod_02_F_tan","Bipod Tan",1000],
						["optic_AMS_snd","AMS Sable",1000],
						["optic_AMS_khk","AMS Khaki",1000],
						["optic_KHS_tan","Kahlia Tan",1000],
						["optic_KHS_hex","Kahlia Hex",1000],
						["muzzle_snds_H",nil,150],
						["muzzle_snds_L",nil,150],
						["muzzle_snds_M",nil,150],
						["muzzle_snds_B",nil,150],
						["muzzle_snds_H_MG",nil,150],
						["optic_Arco",nil,150],
						["optic_Hamr",nil,150],
						["optic_Aco",nil,150],
						["optic_ACO_grn",nil,150],
						["optic_Holosight",nil,150],
						["optic_Holosight_smg",nil,150],
						["optic_SOS",nil,300],
						["acc_flashlight",nil,150],
						["acc_pointer_IR",nil,150],
						["optic_MRCO",nil,150],
						["muzzle_snds_acp",nil,150],
						["optic_DMS",nil,300],
						["optic_LRPS",nil,900],
						["optic_NVS",nil,400],
						["ItemRadio","Téléphone",100],
						["Rangefinder",nil,100],
						["FirstAidKit",nil,100],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["NVGoggles_INDEP",nil,3000]
					]
				];
			};
		};
	};
	
	case "cellphone":
	{
		["Magasin de Téléphone",
			[
				["ItemRadio","Téléphone",500]
			]
		];
	};
	
	case "gt": // Global Trust
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas un civil pour acceder a ce vendeur!"};
			case (!licence_civ_gt): {"Vous n'etes pas de l'entreprise Global Trust !"};
			default
			{
				["Magasin Global Trust",
					[
						["SMG_01_F",nil,18000],
						["optic_Aco_smg",nil,500],
						["optic_Holosight_smg",nil,500],
						["muzzle_snds_acp",nil,500],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,250],
						["ItemRadio","Téléphone",500],
						["Binocular",nil,1500],
						["ItemGPS",nil,100],
						["ToolKit","Boite a outils",17000],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,3000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Magasin Général d'Altis",
			[
				["Binocular",nil,1500],
				["ItemGPS",nil,100],
				["ToolKit","Boite a outils",17000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,3000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};