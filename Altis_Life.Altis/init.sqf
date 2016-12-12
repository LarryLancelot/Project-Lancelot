/*
    File: init.sqf
    Author:

    Description:

*/
StartProgress = false;

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\scripts\fn_statusBar.sqf"; //Load custom status bar

StartProgress = true;