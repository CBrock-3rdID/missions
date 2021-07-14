//Basic Combat Training - Trainee
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
player forceAddUniform "rhs_uniform_cu_ocp";
player addItemToUniform "ACE_EarPlugs";
player addVest "rhsusf_iotv_ocp_Rifleman";
player addHeadgear "rhsusf_ach_helmet_ocp";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player setSpeaker "ACE_NoVoice";
