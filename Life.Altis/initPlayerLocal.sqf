/*
File : initPlayerLocal
Author: Cjay
*/

cutText[localize"STR_Init_Setup","BLACK OUT"];
[] call compile preprocessFileLineNumbers "functions\variables.sqf";
[] call SVR_fnc_reqData;
waitUntil [session_ready];
0 cutFadeOut 2;