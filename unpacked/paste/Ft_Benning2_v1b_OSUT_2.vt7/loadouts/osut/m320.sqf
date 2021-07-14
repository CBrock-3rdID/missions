//M320 Range - Trainee
player removeWeapon "rhs_weap_m249_pip_L";
player removeWeapon "rhs_weap_m4a1_carryhandle_m203";
player removeWeapon "rhs_weap_m4a1_carryhandle";
player removeWeapon "rhs_weap_m4a1_m320";
player addWeapon "rhs_weap_m4a1_m320";
player removeItems "rhs_mag_M441_HE";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_M441_HE";};
