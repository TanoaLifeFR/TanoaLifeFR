/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	//LEGAL FLICS ETC
	case "car": {0}; // Permis Conduire ADAC
	case "cair": {0}; //Flic
	case "swat": {0}; // Flic
	case "merc": {0}; // Altis Protection
	case "cg": {0}; // Flic
	case "donateur1": {0}; // Donateur 1
    case "donateur2": {0}; // Donateur 2
    case "donateur3": {0}; // Donateur 3
	case "donateur4": {0}; // Donateur 4
	case "journaliste": {0}; // Journaliste
	case "detective": {0}; // Licence Detective
	case "gt": {0}; // Licence Global Trust
	
	//PERMIS
	case "truck": {75000}; // Camion
	case "dive": {30000}; // Plongée
	case "mair": {30000};  // Maire
	case "gun": {130000}; // Civ armes
	case "driver": {1000}; // Permis Conduire
	case "boat": {5000}; // Bateau
	case "pilot": {150000}; // Helicoptere
	case "home": {900000};  // Maison
	
	//RESSOURCES
	case "salt": {25000};  // Sel
	case "sand": {18500};  // Sable
	case "iron": {12500};  // Fer
	case "copper": {12500};  // Cuivre
	case "cement": {10000};  // Ciment
	case "argent": {30000}; // Licence Argent
	case "charbon": {15000}; // Licence de Charbon
	case "diamond": {70000};  // Diamants
	case "oil": {30000}; // Petrole
	
	//RESSOURCE ILLEGAL
	case "heroin": {250000}; // Heroin 
	case "marijuana": {175000}; // Marijuana
	case "medmarijuana": {200000}; // Mari Medical
	case "cocaine": {300000};  // Cocaine
	case "meth": {450000};  // Meth
	case "plutonium": {340000}; // Licence Plutonium
	case "cigarette": {275000}; // Licence Cigarette
	
	//LICENCE ILLEGAL
	case "rebel": {900000}; // Rebel 1
	case "rebel2": {1500000}; // Rebel 2
	case "rebel3": {2000000}; // Rebel 3
	case "rebel4": {4000000}; // Rebel 4
	case "gang": {0}; // Gang
	
	//LICENCE TEAM
	case "Team LSA": {0}; // Team LSA
};