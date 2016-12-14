waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
	File: fn_statusBar.sqf
	Author: Some French Guy named Osef I presume, given the variable on the status bar
	Edited by: [midgetgrimm]
	Description: Puts a small bar in the bottom right of screen to display in-game information

*/
4 cutRsc ["osefStatusBar","PLAIN"];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText parsetext format["<t color='#db1904'>Food : %7 </t>| <t color='#046cdb'>Thirst : %8</t> |<t color='#e00dab'> FPS: %1 </t>|<t color='#0044CC'> Police: %1</t> |<t color='#760de0'> Civilians: %2 </t>|<t color='#2fdb0d'> EMS: %3</t> | <t color='#d4db0d'>CASH: %4 </t>|<t color='#d4db0d'> BANK: %5 </t>| GRIDREF: %6 |", west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText,mapGridPosition player,[life_hunger] call life_fnc_numberText,[life_thirst] call life_fnc_numberText, _counter],;
	};
};