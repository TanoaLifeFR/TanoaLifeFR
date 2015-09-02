/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Le Commerce du Brigand"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_dgtl",nil,1500],
			["H_Cap_brn_SPECOPS",nil,1500],
			["H_Cap_blk_Raven",nil,1500],
			["H_HelmetO_oucamo",nil,1500],
			["H_Bandanna_camo",nil,1500],
			["H_Hat_camo",nil,1500]
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
			["G_Bandanna_aviator",nil,155],
			["G_Bandanna_beast",nil,155],
			["G_Bandanna_oli",nil,155],
			["G_Bandanna_shades",nil,155],
			["G_Bandanna_sport",nil,155]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Chestrig_khk",nil,25000],
			["V_Chestrig_rgr",nil,25000],
			["V_Chestrig_blk",nil,25000],
			["V_Chestrig_oli",nil,25000],
			["V_HarnessOSpec_brn",nil,35000],
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_TacticalPack_ocamo",nil,4500],
			["B_Carryall_oucamo",nil,5000],
			["B_Carryall_ocamo",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};