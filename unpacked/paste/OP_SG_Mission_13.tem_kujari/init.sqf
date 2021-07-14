//Headless Client
[
    true,         // run repeatedly
    30,           // time between each check
    false,        // debug available for all
    true,         // advanced AI distribution
    30,           // delay
    8,            // how long to wait between each transfer, longer aids syncing
    false,        // turn setup report on or off
    ["B_Story_SF_Captain_F", "LOP_ISTS_OPF_Infantry_Engineer"]  // units to ignore
] execVM "scripts\WerthlesHeadless.sqf";

//R3F Logistics
execVM "R3F_LOG\init.sqf";
//Delete Zeus for people that are not supposed to be Zeus
execVM "scripts\fuckZeus.sqf";
//Marking stuff on the map
execVM "scripts\markStuff.sqf";