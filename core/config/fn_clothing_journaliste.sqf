/*
	File: fn_clothing_journaliste.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Altis Diving Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vetement Journaliste"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Journalist","Tenue de Presse",100],
			["U_C_Poloshirt_blue","Hello Kitty Rose",100],
			["U_C_Poloshirt_burgundy","Canard Coste",100],
			["U_C_Poloshirt_redwhite","Petit Suisse",100],
			["U_C_Poloshirt_salmon","Polo marron",100],
			["U_C_Poloshirt_stripped","Polo rayures",100],
			["U_C_Poloshirt_tricolour","Polo tricolor",100],
			["U_C_Poor_1","Tee-Shirt bleu",250],
			["U_NikosBody","Vetements Swag",300],
			["U_OrestesBody","Vetements de Surfeur",300],
			["U_IG_Guerilla2_1","Chemise Bleu",300],
			["U_IG_Guerilla2_2","Chemise verte à carreaux",300],
			["U_IG_Guerilla2_3","Chemise bleu et pantalon vert",300],
			["U_IG_Guerilla3_1","Tenue de chasseur 1",350],
			["U_IG_Guerilla3_2","Tenue de chasseur 2",350],
			["U_NikosAgedBody","Costard cravate",500]
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
			["V_Press_F",nil,100],
			["V_BandollierB_khk",nil,750],
			["V_BandollierB_cbr",nil,750],
			["V_BandollierB_rgr",nil,750],
			["V_BandollierB_blk",nil,750],
			["V_BandollierB_oli",nil,750]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli","Sac Canard Coste",3500],
			["B_FieldPack_ocamo","Sac Cars",3000],
			["B_Bergen_sgg","Minion Rose",4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};