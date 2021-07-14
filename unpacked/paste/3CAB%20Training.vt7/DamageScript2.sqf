//Chinooks Apaches
while {true} do {
	sleep 10;
	{
		if ((typeOf _x) in ["RHS_CH_47F_10", "RHS_CH_47F_10_cargo", "RHS_CH_47F_light", "RHS_AH64D", "RHS_AH64DGrey"]) then {
			if (!(_x getVariable ["isSetup", false])) then {
				_x setVariable ["isSetup", true];
				_X addAction["<t color='#ff0000'>DESTROY: ENGINE</t>","(vehicle player) setHit ['engine_hit', 1]; hint 'ENGINE DESTROYED';",[],-96,false,false,"",'']; 
				_x addAction["<t color='#00ff00'>DESTROY: MAIN ROTOR</t>","(vehicle player) setHit ['velka vrtule',1]; hint 'MAIN ROTOR DESTROYED';",[],-96,false,false,"",'']; 
				_x addAction["<t color='#0000ff'>DESTROY: ANTI-TORQUE ROTOR</t>","(vehicle player) setHit ['mala vrtule',1]; hint 'ANTI-TORQUE ROTOR DESTROYED';",[],-98,false,false,"",'']; 
			};
		};
	} forEach vehicles;
};