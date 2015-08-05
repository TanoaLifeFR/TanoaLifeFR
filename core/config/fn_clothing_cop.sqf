#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vestiaire de la Gendarmerie"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Gendarme",0];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["U_B_Wetsuit","Combi de Plongée",0];
			_ret pushBack ["U_B_CombatUniform_mcam","Polaire Bleu",0];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["U_B_GhillieSuit",nil,0];
			_ret pushBack ["U_B_FullGhillie_sard",nil,0];
			_ret pushBack ["U_B_FullGhillie_ard",nil,0];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","Polaire Noir",0];
		};
		if(__GETC__(life_coplevel) > 15) then
		{
			_ret pushBack ["U_C_Commoner1_3","BAC",100];
			_ret pushBack ["U_NikosBody",nil,100];
			_ret pushBack ["U_NikosAgedBody",nil,100];
		};
		if(__GETC__(life_coplevel) > 16) then
		{
			_ret pushBack ["U_B_CTRG_1","Tenue GIGN",0];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Cap_blk",nil,0];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_MilCap_blue",nil,0];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_Beret_grn_SF",nil,0];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret pushBack ["H_Beret_02",nil,0];
		};
		if(__GETC__(life_coplevel) > 11) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,0];
		};
		if(__GETC__(life_coplevel) > 16) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,0];
			_ret pushBack ["H_HelmetB_light_black",nil,0];
			_ret pushBack ["H_HelmetB_camo",nil,0];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,0];
		};
	};
	
	//Glasses
	case 2:
	{
	    _ret pushBack ["G_Shades_Black",nil,0];
		_ret pushBack ["G_Shades_Blue",nil,0];
		_ret pushBack ["G_Sport_Blackred",nil,0];
		_ret pushBack ["G_Sport_Checkered",nil,0];
		_ret pushBack ["G_Sport_Blackyellow",nil,0];
		_ret pushBack ["G_Sport_BlackWhite",nil,0];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["G_Aviator",nil,0];
			_ret pushBack ["G_Squares",nil,0];
			_ret pushBack ["G_Bandanna_tan","Anti-Gaz",0];
			_ret pushBack ["G_Lowprofile",nil,0];
			_ret pushBack ["G_Combat",nil,0];
		};
		
		if(__GETC__(life_coplevel) > 16) then
		{
			_ret pushBack ["G_Balaclava_blk",nil,0];
			_ret pushBack ["G_Balaclava_combat",nil,0];
			_ret pushBack ["G_Balaclava_lowprofile",nil,0];
			_ret pushBack ["G_Balaclava_oli",nil,0];
		};
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,0];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_TacVest_blk_POLICE","Gilet par-balles",0];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["V_PlateCarrier1_blk","Gilet tactique noir",0];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["V_RebreatherIA","Respirateur",0];
		};
		if(__GETC__(life_coplevel) > 16) then
		{
			_ret pushBack ["V_PlateCarrierIAGL_oli","Gilet Blindée Vert",0];
			_ret pushBack ["V_PlateCarrierIAGL_dgtl","Gilet Blindée Digital",0];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret pushBack ["B_Bergen_sgg","Gendarmerie Noir",0];
		_ret pushBack ["B_Bergen_mcamo","Gendarmerie Bleu",0];
		if(__GETC__(life_coplevel) > 16) then
		{
			_ret pushBack ["B_Carryall_khk","Sac Civil",0];
		};
		if(__GETC__(life_coplevel) > 16) then
		{
			_ret pushBack ["B_Bergen_blk","GIGN",0];
		};
	};
};

_ret;