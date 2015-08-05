waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

4 cutRsc ["osefStatusBar","PLAIN"]; 
//systemChat format["[GL v3.1.4] Loading game server info...", _rscLayer];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText
    format["Fps: %1 | Gendarme: %2 | Mercenaire : %3 | Civil: %4 | Securité: %5 | Argent: %6 | Banque: %7 | %8", round diag_fps, 
    west countSide playableUnits, east countSide playableUnits, civilian countSide playableUnits,
    independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmcash] call   
    life_fnc_numberText, mapGridPosition player, _counter];
	}; 
};