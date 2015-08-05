#include <macro.h>
/*
	File: fn_clothing_mercenaire.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vestiaire Altis Protection"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_B_SpecopsUniform_sgg","Altis Protection",3000],
			["U_I_FullGhillie_ard",nil,3000],
			["U_O_FullGhillie_ard",nil,3000],
			["U_B_FullGhillie_ard",nil,3000],
			["U_I_FullGhillie_sard",nil,3000],
			["U_O_FullGhillie_sard",nil,3000],
			["U_B_FullGhillie_sard",nil,3000],
			["U_I_G_resistanceLeader_F",nil,3000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_dgtl",nil,1500],
			["H_HelmetB_light",nil,1500],
			["H_HelmetB_snakeskin",nil,1500],
			["H_Booniehat_indp",nil,1500],
			["H_Cap_brn_SPECOPS",nil,1500],
			["H_Cap_blk_Raven",nil,1500],
			["H_MilCap_ocamo",nil,1500],
			["H_Bandanna_camo",nil,1500],
			["H_Watchcap_sgg",nil,1500],
			["H_MilCap_gry",nil,1500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,125],
			["G_Shades_Blue",nil,120],
			["G_Sport_Blackred",nil,120],
			["G_Sport_Checkered",nil,120],
			["G_Sport_Blackyellow",nil,120],
			["G_Sport_BlackWhite",nil,120],
			["G_Squares",nil,110],
			["G_Lowprofile",nil,130],
			["G_Combat",nil,155],
			["G_Balaclava_combat",nil,155],
			["G_Balaclava_blk",nil,155],
			["G_Balaclava_lowprofile",nil,155],
			["G_Balaclava_oli",nil,155],
			["G_Bandanna_tan","Masque Lacrymo",155],
			["G_Bandanna_aviator",nil,155],
			["G_Bandanna_beast",nil,155],
			["G_Bandanna_blk",nil,155],
			["G_Bandanna_oli",nil,155],
			["G_Bandanna_shades",nil,155],
			["G_Bandanna_sport",nil,155]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,35000],
			["V_TacVest_brn",nil,35000],
			["V_TacVest_oli",nil,35000],
			["V_TacVest_camo",nil,35000],
			["V_I_G_resistanceLeader_F",nil,35000],
			["V_PlateCarrierIA1_dgtl",nil,35000],
			["V_PlateCarrierIA2_dgtl",nil,45000],
			["V_PlateCarrierH_CTRG",nil,45000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli","Altis Protection",5000]
		];
	};
};