//Platoon Sergeant
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
player addBackpack "rhsusf_assault_eagleaiii_ocp";
player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
player addItemToBackpack "rhs_mag_M441_HE";
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "RH_peq15";
removeBackpack player;
player forceAddUniform "rhs_uniform_cu_ocp";
for "_i" from 1 to 5 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
player addItemToUniform "ItemcTabHCam";
player addVest "rhsusf_iotv_ocp_Squadleader";
for "_i" from 1 to 6 do {player addItemToVest "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 8 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_Flashlight_MX991";
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "rhsusf_ANPVS_15";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {player addItemToVest "B_IR_Grenade";};
player addItemToVest "SmokeShellBlue";
player addItemToVest "SmokeShellPurple";
player addItemToVest "SmokeShellYellow";
player addHeadgear "rhsusf_ach_helmet_ocp";
player addWeapon "Rangefinder";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemcTab";
player setSpeaker "ACE_NoVoice";