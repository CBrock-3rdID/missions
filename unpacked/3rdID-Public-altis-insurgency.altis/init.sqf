// Disable saving
enableSaving [false, true];
enableTeamswitch false;

// EOS Insurgency System
[]execVM "eos\OpenMe.sqf";

// BTC Revive System

call compile preprocessFile "scripts\=BTC=_revive\=BTC=_revive_init.sqf";

// Enhanced Helis
[] execVM "scripts\helispawn\acpinit.sqf";
[] execVM "scripts\helispawn\editorgargoyle.sqf";
[] execVM "scripts\helispawn\editormohawk.sqf";
[] execVM "scripts\helispawn\editoracp.sqf";
// [] execVM "scripts\helispawn\pmc\pmcarmed.sqf";
[] execVM "scripts\helispawn\armedmh9\armedmh9.sqf";

// Generic Vehicle Service
execVM "gvs\gvs_init.sqf";

// Vehicles Interior Light
nul=[] execVM "scripts\IntLight.sqf";

// Random Weather
execVM "scripts\randomWeather2.sqf";

// Repair Script (anyone with a toolkit can repair)
// nul=[] execVM "scripts\repair.sqf";

// Player Icons
if (!isServer) then { 
	[] execVM "scripts\icons.sqf";
};

// Item Cleanup Script
[
	60, 	// seconds to delete dead bodies (0 means don't delete) 
	5*60, 	// seconds to delete dead vehicles (0 means don't delete)
	2*60, 	// seconds to delete dropped weapons (0 means don't delete)
	10*60, 	// seconds to deleted planted explosives (0 means don't delete)
	0 	// seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "scripts\repetitive_cleanup.sqf";


// EOF




