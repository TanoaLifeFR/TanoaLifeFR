/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "brigand": {_var = "license_civ_brigand"}; //Brigand Licence
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "donateur1": {_var = "licence_civ_dona1"};
            case "donateur2": {_var = "licence_civ_dona2"};
            case "donateur3": {_var = "licence_civ_dona3"};
			case "donateur4": {_var = "licence_civ_dona4"};
			case "journaliste": {_var = "licence_civ_journaliste"};
			case "argent": {_var = "license_civ_argent"};
			case "charbon": {_var = "license_civ_charbon"};
			case "meth": {_var = "license_civ_meth"};
			case "meth1": {_var = "license_civ_meth"};
			case "meth2": {_var = "license_civ_meth"};
			case "detective": {_var = "licence_civ_detective"};
			case "plutonium": {_var = "licence_civ_plutonium"};
			case "cigarette": {_var = "licence_civ_cigarette"};
			case "gt": {_var = "licence_civ_gt"};
			case "lsa": {_var = "licence_civ_lsa"}; // Team LSA
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_brigand": {_var = "brigand"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "licence_civ_dona1": {_var = "donateur1"};
            case "licence_civ_dona2": {_var = "donateur2"};
            case "licence_civ_dona3": {_var = "donateur3"};
			case "licence_civ_dona4": {_var = "donateur4"};
			case "licence_civ_journaliste": {_var = "journaliste"};
			case "license_civ_argent": {_var = "argent"};
			case "license_civ_charbon": {_var = "charbon"};
			case "license_civ_meth": {_var = "meth"};
			case "licence_civ_detective": {_var = "detective"};
			case "licence_civ_plutonium": {_var = "plutonium"};
			case "licence_civ_cigarette": {_var = "cigarette"};
			case "licence_civ_gt": {_var = "gt"};
			case "licence_civ_lsa": {_var = "lsa"}; // Team LSA
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;