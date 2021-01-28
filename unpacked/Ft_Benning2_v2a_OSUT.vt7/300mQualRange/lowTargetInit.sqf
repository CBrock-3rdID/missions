[_this, -0.1, 2] call CBA_fnc_setHeight;
if (isServer) then {
	_hump = "Dirthump_3_F" createVehicle [0,0,0];
	_hump setPosASL ([getPosASL _this, [3.01074,2.32788,-2.75]] call CBA_fnc_vectAdd);
};