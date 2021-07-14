//Blackhawks
while {true} do {
	sleep 10;
	{
		if ((typeOf _x) in ["RHS_UH60M_d", "RHS_UH60M_ESSS_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M2_d", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV_d"]) then {
			if (!(_x getVariable ["isSetup", false])) then {
				_x setVariable ["isSetup", true];
				_x addAction["<t color='#ff0000'>DESTROY: ENGINE</t>","(vehicle player) setHit ['engine_hit', 1]; hint 'ENGINE DESTROYED';",[],-96,false,false,"",'']; 
				_x addAction["<t color='#00ff00'>DESTROY: MAIN ROTOR</t>","(vehicle player) setHit ['velka vrtule',1]; hint 'MAIN ROTOR DESTROYED';",[],-96,false,false,"",'']; 
				_x addAction["<t color='#0000ff'>DESTROY: ANTI-TORQUE ROTOR</t>","(vehicle player) setHit ['tail_rotor_hit',1]; hint 'ANTI-TORQUE ROTOR DESTROYED';",[],-98,false,false,"",'']; 
			};
		};
	} forEach vehicles;
};