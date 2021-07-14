[missionNamespace, "arsenalClosed", {	
	player setVariable ["Saved_Loadout",getUnitLoadout player];
}] call BIS_fnc_addScriptedEventHandler;

switch (typeOf player) do {
    case "rhsusf_army_ocp_squadleader": { [player] execVM "loadouts\SL-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_rifleman_10th": { [player] execVM "loadouts\loadouts\CLS-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
    case "rhsusf_army_ocp_medic": { [player] execVM "loadouts\Medic-RifleSquad.sqf" };
};