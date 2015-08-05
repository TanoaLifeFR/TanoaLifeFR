#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

_units = _units - [player];

{
	private["_text"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x])
			&& {!isNil {_x getVariable "realname"}} 
			&& headgear _x != "H_ShemagOpen_tan"
			&& headgear _x != "H_Shemag_olive"
			&& headgear _x != "H_ShemagOpen_khk"
			&& headgear _x != "H_Shemag_tan"
			&& headgear _x != "H_Shemag_khk"
			&& headgear _x != "H_Shemag_olive_hs"
			&& uniform _x != "U_O_GhillieSuit"
			&& uniform _x != "U_B_GhillieSuit"
			&& uniform _x != "U_B_FullGhillie_sard"
			&& uniform _x != "U_B_FullGhillie_ard"
			&& uniform _x != "U_I_FullGhillie_sard"
			&& uniform _x != "U_I_FullGhillie_ard"
			&& uniform _x != "U_O_FullGhillie_ard"
			&& uniform _x != "U_O_FullGhillie_sard"
			&& goggles _x != "G_Balaclava_blk"
			&& goggles _x != "G_Balaclava_combat"
			&& goggles _x != "G_Balaclava_lowprofile"
			&& goggles _x != "G_Balaclava_oli"
			&& goggles _x != "G_Bandanna_aviator"
			&& goggles _x != "G_Bandanna_tan"
			&& goggles _x != "G_Bandanna_sport"
			&& goggles _x != "G_Bandanna_shades") then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then {
			_text = switch (true) do {
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
				case (!isNil {(_x getVariable "rank")}): {format["<img image='%1' size='2'></img> %2<br/><t size='1' color='#FFFFFF'>%3</t>",
					switch ((_x getVariable "rank")) do {
						case 1: {"textures\Gendarme\Grades\Gendarme.jpg"};
						case 2: {"textures\Gendarme\Grades\Brigadier.jpg"};
						case 3: {"textures\Gendarme\Grades\Brigadier-Chef.jpg"};
						case 4: {"textures\Gendarme\Grades\Sergent.jpg"};
						case 5: {"textures\Gendarme\Grades\Sergent-Chef.jpg"};
						case 6: {"textures\Gendarme\Grades\Adjudant.jpg"};
						case 7: {"textures\Gendarme\Grades\Adjudant-Chef.jpg"};
						case 8: {"textures\Gendarme\Grades\Major.jpg"};
						case 9: {"textures\Gendarme\Grades\Sous-Lieutenant.jpg"};
						case 10: {"textures\Gendarme\Grades\Lieutenant.jpg"};
						case 11: {"textures\Gendarme\Grades\Capitaine.jpg"};
						case 12: {"textures\Gendarme\Grades\Colonel.jpg"};
						case 13: {"textures\Gendarme\Grades\Commandant.jpg"};
						case 14: {"textures\Gendarme\Grades\General.jpg"};
						case 15: {"textures\Gendarme\Grades\Commissaire.jpg"};
						case 16: {"textures\Gendarme\Grades\Bri.paa"};
						case 17: {""};
						default {"textures\Gendarme\Grades\GAV.jpg"};
					},_x getVariable ["realname",name _x],
					switch ((_x getVariable "rank")) do {
						case 1: {""};
						case 2: {""};
						case 3: {""};
						case 4: {""};
						case 5: {""};
						case 6: {""};
						case 7: {""};
						case 8: {""};
						case 9: {""};
						case 10: {""};
						case 11: {""};
						case 12: {""};
						case 13: {""};
						case 14: {""};
						case 15: {""};
						case 16: {""};
						case 17: {""};
						default {""};
					}]};
				case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["name","Unknown Player"]]};
				default {
					if(!isNil {(group _x) getVariable "gang_name"}) then {
						format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
					} else {
						_x getVariable ["realname",name _x];
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;