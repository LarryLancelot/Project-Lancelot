/*
Author: Cjay
Description: called when a player join the server to check whether they are present in the database if true
 */
params [
	["_uid","",[""]],
	["_sender",objNull, [objNull]]
];
diag_log format ["Query sent %1",_uid];
private _queryResult = [2,"checkPlayerExists",_uid] call SQL_fnc_async;
diag_log format ["result = %1",_queryResult];
if (_queryResult isEqualType ""|| _queryResult isEqualTO []) exitWith {
	[1,"insertNewPlayer",_uid] call SQL_fnc_async;
	[] remoteExec ["SVR_fnc_addName",owner _sender];
};
//pull player data
