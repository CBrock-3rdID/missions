//Basic Airborne - Trainee
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

comment "Add weapons";
player addWeapon "rhs_weap_m249_pip";
player addPrimaryWeaponItem "RH_c79";
player addPrimaryWeaponItem "rhsusf_200Rnd_556x45_M855_soft_pouch_ucp";
player addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
player addWeapon "506th_weap_m17f";
player addHandgunItem "506th_mag_m17_17rnd9mm";

comment "Add containers";
player forceAddUniform "rhs_uniform_cu_ocp";
player addVest "milgp_v_marciras_hgunner_mc";
player addBackpack "rhsusf_assault_eagleaiii_ocp";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "MS_Strobe_Mag_2";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 3 do {player addItemToVest "506th_mag_m17_17rnd9mm";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_200Rnd_556x45_M855_soft_pouch_ucp";};
player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_SpraypaintGreen";
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_200Rnd_556x45_M855_soft_pouch_ucp";};
player addHeadgear "rhsusf_ach_bare";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "rhsusf_ANPVS_14";
