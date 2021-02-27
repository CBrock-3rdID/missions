//Respawn with Loadout
player setVariable ["Saved_Loadout",getUnitLoadout player];

//Set civvies friendly to all sides
Civilian setFriend [west, 1]; Civilian setFriend [east, 1];

//Headless Client
[true,30,false,true,30,3,true,[]] execVM "WerthlesHeadless.sqf";