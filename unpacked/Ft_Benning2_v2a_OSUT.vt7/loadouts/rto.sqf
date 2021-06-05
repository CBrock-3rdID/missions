//Platoon Radio Operator
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
player forceAddUniform "rhs_uniform_cu_ocp";
player addVest "rhsusf_iotv_ocp_Rifleman";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_quikclot";};
player addItemToVest "rhsusf_ANPVS_14";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
player addBackpack "tf_anarc210";
player addHeadgear "rhsusf_ach_helmet_ocp";
player addWeapon "rhs_weap_m4a1_carryhandle";
player addPrimaryWeaponItem "RH_peq15";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemcTab";
player setSpeaker "ACE_NoVoice";