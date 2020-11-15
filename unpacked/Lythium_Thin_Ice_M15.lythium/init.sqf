//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

//Respawn with Loadout
player setVariable ["Saved_Loadout",getUnitLoadout player];

//R3F Logistics
execVM "R3F_LOG\init.sqf";

// Set civvies friendly to all sides
Civilian setFriend [west, 1]; Civilian setFriend [east, 1];
