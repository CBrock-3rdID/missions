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


