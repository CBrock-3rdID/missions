[missionNamespace, "arsenalClosed", {	
	player setVariable ["Saved_Loadout",getUnitLoadout player];
}] call BIS_fnc_addScriptedEventHandler;


//Squad Leader (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_squadleader") then {
        [player] execVM "loadouts\SL-RifleSquad.sqf";
    };

//Squad Medic (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_medic") then {
        [player] execVM "loadouts\Medic-RifleSquad.sqf";
    };

//CLS (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_rifleman_10th") then {
        [player] execVM "loadouts\CLS-RifleSquad.sqf";
    };    

//Fireteam Leader (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_teamleader") then {
        [player] execVM "loadouts\FTL-RifleSquad.sqf";
    };

//Automatic Rifleman (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_autorifleman") then {
        [player] execVM "loadouts\AR-RifleSquad.sqf";
    };

//Asst. Automatic Rifleman (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_autoriflemana") then {
        [player] execVM "loadouts\AAR-RifleSquad.sqf";
    };

//Rifleman AT (RifleSquad)
    if (player isKindOf "rhsusf_army_ocp_riflemanat") then {
        [player] execVM "loadouts\RA-RifleSquad.sqf";
    };

//Squad Leader (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_squadleader") then {
        [player] execVM "loadouts\SL-WeaponSquad.sqf";
    };

//Squad Medic/CLS (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_arb_medic") then {
        [player] execVM "loadouts\Medic-WeaponSquad.sqf";
    };

//Ammo Handler (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_arb_grenadier") then {
        [player] execVM "loadouts\AH-WeaponSquad.sqf";
    };

//Javelin Gunner (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_arb_engineer") then {
        [player] execVM "loadouts\JG-WeaponSquad.sqf";
    };    

//MAAWS Gunner (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_arb_maaws") then {
        [player] execVM "loadouts\MG-WeaponSquad.sqf";
    };    

//Rifleman AT (WeaponSquad) - Doesn't have its own loadout, making it the same as Rifle. Squad AT. Still defined in this script just in case they got their own loadout.
    if (player isKindOf "rhsusf_army_ocp_arb_riflemanat") then {
        [player] execVM "loadouts\RA-RifleSquad.sqf";
    };   

//Assistant Gunner (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_arb_machinegunnera") then {
        [player] execVM "loadouts\AG-WeaponSquad.sqf";
    };

//M240B Gunner (WeaponSquad)
    if (player isKindOf "rhsusf_army_ocp_arb_machinegunner") then {
        [player] execVM "loadouts\M240B-WeaponSquad.sqf";
    };