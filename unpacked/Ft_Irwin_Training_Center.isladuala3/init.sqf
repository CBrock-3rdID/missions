// Saves players loadout so they respawn with their gear
if (hasInterface) then {
    [] spawn {
        waitUntil {alive player};
        player setVariable ["loadout",getUnitLoadout player,false];
        player addEventHandler ["Respawn", {
        player setUnitLoadout (player getVariable "loadout");
        }];
    };
};

//Headless Client
[true,30,false,true,30,3,true,[]] execVM "WerthlesHeadless.sqf";

//R3F Logistics
execVM "R3F_LOG\init.sqf";