[missionNamespace, "arsenalClosed", {	
	player setVariable ["Saved_Loadout",getUnitLoadout player];
}] call BIS_fnc_addScriptedEventHandler;

// TFAR Radio Jamming
radioJammer = [[jammer1, Jammer2], 1, 50, TRUE] execVM "scripts\TFARjamRadios.sqf";