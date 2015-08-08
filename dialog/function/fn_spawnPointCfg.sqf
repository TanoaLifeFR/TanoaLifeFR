/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return =
		[
			["cop_spawn_kavala","Poste de Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_pyrgos","Poste de Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_athira","Poste d'Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_airhq","Base Aerienne","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_sofia","Poste de Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["police_entrainement","Entrainement","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case east: 
	{
		_return = [
			["spawn_merc1","Altis Protection","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case civilian:
	{	
		if(license_civ_rebel) then 
		{
            _return = 
			[
				["reb_spawn_2","Avant-Poste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_4","Camp Rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		}		
		else
		{
            _return = 
			[
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                ["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(licence_civ_dona1 || licence_civ_dona2 || licence_civ_dona3 || licence_civ_dona4) then 
		{
            _return pushBack ["spawn_dona","Camp Donateur","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] ;
		};

		if(licence_civ_journaliste) then 
		{
            _return pushBack ["spawn_journa","QG Journaliste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] ;
		};
		
		if(licence_civ_detective) then
		{
            _return pushBack ["spawn_dete","QG Detective","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] ;
		};
		
		if(licence_civ_gt) then
		{
            _return pushBack ["gt","Global Trust","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] ;
		};
		
		if(licence_civ_LSA) then
		{
            _return pushBack ["spawn_LSA","Villa LSA","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] ;
		};
		
		if(count life_houses > 0) then 
		{
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
	};
	
	case independent: 
	{
		_return = 
		[
			["medic_spawn_1","Hopital Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Hopital Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Hopital Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;