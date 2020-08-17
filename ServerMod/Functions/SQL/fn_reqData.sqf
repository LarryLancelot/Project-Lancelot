/*
Author: Cjay
Description: called when a player join the server to check whether they are present in the database
 */
params [
	["_uid,",[""]]
];
diag_log format ["Query sent %1",_uid];
private _queryResult = [2,_] call DB_fnc_async;
diag_log format ["result = %1",_queryResult];
if (_queryResult isEqualType ""|| _queryResult isEqualTO []) exitWith {
	[] remoteexecCall //add new player
};
//pull player data
