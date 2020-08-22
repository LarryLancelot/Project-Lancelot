private _uid = getPlayerUID player;
private _owner = player;
hint format ["playerid is %1",_uid];
diag_log format ["player id = %1",_uid];
[_uid,_owner] remoteExec ["SQL_fnc_reqData",2];
//hint "data sent";