/*
    File: fn_handleDowned.sqf
    Author: Skalicon modded by Mahribar
    
    Description: Original Script for rubber bullets Modified for Airsoft
*/
private["_unit","_shooter","_curWep","_curMags","_attach"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_isdowned = false;};

if(_shooter isKindOf "Man" && alive player) then
{

    hint format['Vous avez été tué par \n\n %1 \n\n Retour à un spawn!',name _shooter];
    [[1,format["Vous avez tué %1",name _unit]],"life_fnc_broadcast",_shooter,false] spawn life_fnc_MP;

    deleteMarkerLocal "Tueur";
    _marker = createMarkerLocal ["Tueur", position _shooter];
    _marker setMarkerTypeLocal "Dot";
    _marker setMarkerColorLocal "ColorBlack";

    _spawn = ["as_respawn_1", "as_respawn_2", "as_respawn_3"];
    _randpos = _spawn select floor random count _spawn;
    _pos = getMarkerPos _randpos;
    (vehicle player) setpos [_pos select 0, _pos select 1, 0];
    player say3D "alert";
    player allowDamage false;
}
    else
{
    //_unit allowDamage true;
};