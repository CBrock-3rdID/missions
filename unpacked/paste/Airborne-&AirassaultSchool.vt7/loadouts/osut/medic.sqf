//Advanced Individual Training - Trainee
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
player forceAddUniform "rhs_uniform_cu_ocp";
player addItemToUniform "ACE_EarPlugs";
player addVest "rhsusf_iotv_ocp_Medic";
player addBackpack "rhsusf_assault_eagleaiii_ocp";
player addHeadgear "rhsusf_ach_helmet_ocp";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemcTab";
player setSpeaker "ACE_NoVoice";
player addWeapon "Rangefinder";
player addWeapon "rhs_weap_m4a1_carryhandle";
player addPrimaryWeaponItem "RH_peq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";

// Items Vest
player addItemToVest "rhsusf_ANPVS_15";
for "_i" from 1 to 4 do {player addItemToVest "adv_aceSplint_splint";};
player addItemToVest "ItemcTabHCam";
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};

// Items Backpack
player addItemToBackpack "ACE_personalAidKit";
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 30 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItemToBackpack "adv_aceSplint_splint";};
