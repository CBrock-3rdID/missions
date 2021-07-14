while {true} do {
	sleep 5;
	{
		_unitName = vehicleVarName (getAssignedCuratorUnit _x);
		if (!(_unitName in ["z1", "z2", "z3", "z4", "z5", "z6", "lambo"])) then {
			unassignCurator _x;
		}
	} forEach allCurators;
};