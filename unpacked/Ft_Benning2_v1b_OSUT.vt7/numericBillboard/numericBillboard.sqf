//creates a 7 segment based numeric display board
//use on Empty->Structures->Billboard and in init put:
//				null = [this, <NUMBER OF DIGITS>, <1 if lit, 0 if not. Parameter optional (defaults to 0)>] execVM "numericBillboard\numericBillboard.sqf";
//NOTE: digit count is clamped to range 1 - 10

//written in Feb 2014 by Charles of the 13th SFG

//pull parameters
_billboard = _this select 0;
_numDigits = 1 max (10 min (_this select 1)); //32 bit ints can't hold 11 digit numbers so clamp this between 1 and 10
_lit = 0;
if (count _this > 2) then {
	_lit = _this select 2;
};

//temporarily unset rotation and orientation for easier object creation
_boardDir = vectorDir _billboard;
_boardUp = vectorUp _billboard;
_billboard setDir 0;

//set to black
_billboard setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,1)'];

//make base indestructible
_billboard allowDamage false;

//add light if specified and client
_lights = [];
if (_lit == 1 && !isDedicated) then {
	_light = "Land_LampShabby_F" createVehicleLocal (getPos _billboard);
	_light attachTo[_billboard, [0, 0.5, 0.75]]; 
	_light setVectorDirAndUp[[0,-1,1.5], [0,-1,0]];
	_lights = [_light];
};

//do we need to add more boards?
if (_numDigits > 4) then {
	_extraSpace = (_numDigits * 1.5) - 5; //5 instead of 6 gives 0.5m padding on the sides
	_shrinkEdgesBy = 6 - (_extraSpace / 2.0);
	
	_newbillboard = "Land_Billboard_F" createVehicleLocal (getPos _billboard);
	_newbillboard attachTo[_billboard, [-6 + _shrinkEdgesBy, 0.05, 0]];
	_newbillboard setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,1)'];
	
	_newbillboard2 = "Land_Billboard_F" createVehicleLocal (getPos _billboard);
	_newbillboard2 attachTo[_billboard, [6 - _shrinkEdgesBy, 0.05, 0]];
	_newbillboard2 setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,1)'];
	
	if (_lit == 1 && !isDedicated) then {
		_light = "Land_LampShabby_F" createVehicleLocal (getPos _newbillboard);
		_light attachTo[_newbillboard, [0, 0.5, 0.75]]; 
		_light setVectorDirAndUp[[0,-1,1.5], [0,-1,0]];
		_lights set[count _lights, _light];
		
		_light = "Land_LampShabby_F" createVehicleLocal (getPos _newbillboard2);
		_light attachTo[_newbillboard2, [0, 0.5, 0.75]]; 
		_light setVectorDirAndUp[[0,-1,1.5], [0,-1,0]];
		_lights set[count _lights, _light];
	};
};

_billboard setVariable["lights", _lights];

if (isNil{_billboard getVariable "number"}) then {
	_billboard setVariable["number", -1337, true]; //-1337 being the initial, dashed state of the board
};

//only clients (this includes listen servers and SP) need the numbers to be present. Dedis only get the boards.
if (!isDedicated) then {	
	//create and position digits
	_create7SegmentDigit = compile preprocessfilelinenumbers "numericBillboard\7SegmentDigit.sqf";
	_digits = [];
	for "_i" from 0 to (_numDigits-1) do {
		_xPos = (_i * 1.5) - ((_numDigits-1) * 0.75);
		
		_currentDigit = _billboard call _create7SegmentDigit;
		_currentDigit attachTo [_billboard, [_xPos, 0, 0.2]];
		_digits set[count _digits, _currentDigit];
	};
	_billboard setVariable["digits", _digits];
	
	//set initial display number (this is either dashes or, for JIP players, whatever it was last set to)
	_billboard execVM "numericBillboard\localSetNumber.sqf";
};

//re-set original orientation
_billboard setVectorDirAndUp[_boardDir, _boardUp];