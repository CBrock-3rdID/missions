//Fireteam Leader Loadout
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
player addWeapon "Binocular";
player forceAddUniform "rhs_uniform_cu_ocp";
player addItemToUniform "ACE_EntrenchingTool";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_EarPlugs";
player addVest "rhsusf_iotv_ocp_Teamleader";
player addItemToVest "rhsusf_ANPVS_15";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_M441_HE";};
for "_i" from 1 to 3 do {player addItemToVest "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToVest "UGL_FlareWhite_F";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
player addWeapon "rhs_weap_m4a1_carryhandle_m203";
player addPrimaryWeaponItem "RH_peq15";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addBackpack "rhsgref_hidf_alicepack";
player addItemToUniform "ACE_personalAidKit";
for "_i" from 1 to 2 do {player addItemToVest "ACE_tourniquet";};
player addItemToVest "ACE_morphine";
player addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 5 do {player addItemToVest "ACE_fieldDressing";};
player addItemToVest "ACE_RangeTable_82mm";
player addItemToVest "ACE_artilleryTable";
for "_i" from 1 to 5 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_packingBandage";};
player addItemToVest "ACE_quikclot";
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_Flashlight_MX991";
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_RangeCard";
player addItemToVest "rhsusf_ANPVS_14";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToVest "rhs_mag_an_m8hc";
player addItemToVest "Chemlight_green";
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
player addItemToBackpack "ACE_bodyBag";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_IR_Strobe_Item";
player addItemToBackpack "ACE_MRE_ChickenTikkaMasala";
player addItemToBackpack "ACE_MRE_ChickenHerbDumplings";
player addItemToBackpack "ACE_MRE_CreamChickenSoup";
player addItemToBackpack "adv_aceSplint_splint";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_Sandbag_empty";
player addItemToBackpack "ACE_rope36";
player addItemToBackpack "ACE_personalAidKit";
player addItemToBackpack "rhs_mag_an_m8hc";
player addHeadgear "rhsusf_ach_helmet_ocp";
player addGoggles "rhs_googles_clear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";