_uid = getPlayerUID player;
hint format ["playerid is %1",_uid];
diag_log format ["player id = %1",_uid];
[_uid] remoteExec ["SQL_fnc_reqData",2];
//hint "data sent";