/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vetement de Bruce"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Banana Crew",100],
		["U_C_Poloshirt_burgundy","Banana War",100],
		["U_C_Poloshirt_redwhite","Danger",100],
		["U_C_Poloshirt_salmon","Zombie",100],
		["U_C_Poloshirt_stripped","Why Not",100],
		["U_C_Poloshirt_tricolour","Planet Express",100],
		["U_C_Commoner1_1","NightWatch",100],
		["U_C_Commoner1_2","Vision",100],
		["U_Competitor",nil,100],
		["U_IG_Guerilla2_1",nil,500],
		["U_IG_Guerilla2_2",nil,600],
		["U_IG_Guerilla2_3",nil,500],
		["U_IG_Guerilla3_1",nil,400],
		["U_IG_Guerilla3_2",nil,500],
	    ["U_C_Poor_1","Tee-Shirt bleu",250],
		["U_NikosBody","Vetements Swag",300],
		["U_OrestesBody","Vetements de Surfeur",300],
		["U_NikosAgedBody","Costard cravate",500],
		["U_Competitor","Tenue de Competition",300]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Bandanna Camo",50],
			["H_Bandanna_surfer","Bandanna Surfeur",50],
			["H_Bandanna_gry","Bandanna Gris",50],
			["H_Bandanna_cbr",nil,50],
			["H_Bandanna_surfer",nil,50],
			["H_Bandanna_khk","Bandanna Kaki",50],
			["H_Bandanna_sgg","Bandanna Vert",50],
			["H_StrawHat","Chapeau de paille",50],
			["H_BandMask_blk","Casquette Bandanna",50],
			["H_Booniehat_tan",nil,50],
			["H_Hat_blue",nil,50],
			["H_Hat_brown",nil,50],
			["H_Hat_checker",nil,50],
			["H_Hat_grey",nil,50],
			["H_Hat_tan",nil,50],
			["H_Cap_blu",nil,50],
			["H_Cap_grn",nil,50],
			["H_Cap_grn_BI",nil,50],
			["H_Cap_oli",nil,50],
			["H_Cap_red",nil,50],
			["H_Cap_tan",nil,50]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,50],
			["G_Shades_Blue",nil,50],
			["G_Sport_Blackred",nil,50],
			["G_Sport_Checkered",nil,50],
			["G_Sport_Blackyellow",nil,50],
			["G_Sport_BlackWhite",nil,50],
			["G_Squares",nil,50],
			["G_Aviator",nil,250],
			["G_Lady_Mirror",nil,50],
			["G_Lady_Dark",nil,50],
			["G_Lady_Blue",nil,50],
			["G_Lowprofile",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_khk",nil,1500],
			["V_BandollierB_cbr",nil,1500],
			["V_BandollierB_rgr",nil,1500],
			["V_BandollierB_blk",nil,1500],
			["V_BandollierB_oli",nil,1500]
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
			["B_Carryall_khk",nil,5000]
		];
	};
};