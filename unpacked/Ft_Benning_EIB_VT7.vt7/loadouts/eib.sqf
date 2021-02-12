removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player addWeapon "rhs_weap_m4_carryhandle";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";

player forceAddUniform "Third_ACU_OEFCP_PVT";
player addVest "rhsusf_iotv_ocp_Rifleman";
player addBackpack "rhsusf_assault_eagleaiii_ocp";

player addWeapon "Binocular";

player addItemToVest "ACE_wirecutter";
for "_i" from 1 to 5 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_elasticBandage";};
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {player addItemToVest "SmokeShellPurple";};
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152_2";
