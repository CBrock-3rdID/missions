//Set civvies friendly to all sides
Civilian setFriend [west, 1]; Civilian setFriend [east, 1];

//Headless Client
[
    true,         // run repeatedly
    30,           // time between each check
    false,        // debug available for all
    true,         // advanced AI distribution
    30,           // delay
    5,            // how long to wait between each transfer, longer aids syncing
    false,        // turn setup report on or off
    ["B_UAV_02"]  // units to ignore
] 
execVM "scripts\WerthlesHeadless.sqf";