/*
New Life Rule Timer
Released to AltisLifeRPG.com
Credits to Ciaran for original creation of the script
Edited by Larry to add markers
*/
private["_uiDisp","_time","_timer","_playerpos","_marker"];
if(playerSide isEqualTo west) exitWith {};
if(playerSide isEqualTo independent) exitWith {};
disableSerialization;
7 cutRsc ["life_nlrtimer","PLAIN"];
_uiDisp = uiNamespace getVariable "life_nlrtimer";
_timer = _uiDisp displayCtrl 38301;
_time = time + (10 * 60);
_playerpos = position player;
life_nlrtimer_running = true;
while {true} do {
      if(isNull _uiDisp) then {
            7 cutRsc ["life_nlrtimer","PLAIN"];
            _uiDisp = uiNamespace getVariable "life_nlrtimer";
            _timer = _uiDisp displayCtrl 38301;
            _markerNLT = createmarker ["Marker50",_playerpos];
            "Marker50" setMarkerColor "ColorBlack";
            "Marker50" setMarkerType "hd_marker";
            "Marker50" setMarkerText "NLR DO NOT ENTER";
            "Marker50" setMarkerSize "2"
      };
      if(round(_time - time) < 1) exitWith {};
      if(life_nlrtimer_stop) exitWith {life_nlrtimer_stop = false;};
      _timer ctrlSetText format["NLR: %1",[(_time - time),"MM:SS"] call BIS_fnc_secondsToString];
      sleep 0.1;
      deleteMarker "Marker50"
};
life_nlrtimer_running = false;
7 cutText["","PLAIN"];