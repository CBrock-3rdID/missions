_range = _this select 3 select 0;
_platformNr = _this select 3 select 1;

_platform = missionNamespace getVariable ("platform_" + _range + "_" + _platformNr);

_vehicleToSpawn = selectRandom ["rhs_gaz66_msv", "rhs_zil131_msv", "rhs_btr60_msv", "rhs_bmp1_msv"];
_easterEgg = random 100;
if (_easterEgg > 95) then {
	_vehicleToSpawn = "O_Quadbike_01_F";
};

_pos = position _platform;

_veh = createVehicle [_vehicleToSpawn, _pos vectorAdd [0, 0, 1] , [], 0, "CAN_COLLIDE"];
_veh engineOn true;

sleep 45;
deleteVehicle _veh;