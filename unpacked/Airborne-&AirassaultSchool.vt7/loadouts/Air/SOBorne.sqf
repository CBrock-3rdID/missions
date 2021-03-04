//Basic Airborne - Safety Officer
comment "Exported from Arsenal by 2LT B.Lambert";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "rhs_uniform_acu_oefcp";
player addVest "V_DeckCrew_yellow_F";
player addHeadgear "rhsusf_patrolcap_ocp";
player addGoggles "milgp_f_tactical_khk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemMicroDAGR";
