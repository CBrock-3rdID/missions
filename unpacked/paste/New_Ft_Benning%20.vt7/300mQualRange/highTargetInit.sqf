[_this, 0.26, 2] call CBA_fnc_setHeight;
if (isServer) then {
	_hump = "Dirthump_3_F" createVehicle [0,0,0];
	_hump setPosASL ([getPosASL _this, [3.01074,2.32788,-2.5]] call CBA_fnc_vectAdd);
};