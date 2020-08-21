/*
	Parameters:
		0: INTEGER (1 = ASYNC + not return for update/insert, 2 = ASYNC + return for query's).
		1: STRING (Query to be ran).
*/

if(!params [
	["_mode", 0, [0]],
	["_qtype", "", [""]],
	["_qData","",[""]]
]) exitWith{};

//private _queryResult = "extDB3" callExtension format["%1:%2:%3",_mode, _qType, _qData];
private _queryResult = "extDB3" callExtension format["%1:LifeProtocol:%2:%3",_mode, _qType, _qData];
diag_log format ["result 1 %1",_queryResult];
if (_mode isEqualTo 1) exitWith{true};
_queryResult = call compile format ["%1",_queryResult]; 
diag_log format ["Result 2 %1",_queryResult];
_queryResult = _queryResult select 1;
_queryResult;


