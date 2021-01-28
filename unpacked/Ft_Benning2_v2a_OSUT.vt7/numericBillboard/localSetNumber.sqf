//displays a number on a numericBillboard
//this is used internally by the setNumber script that is be the public interface

//written in Feb 2014 by Charles of the 13th SFG

//the server doesn't have any digits, just a backboard (or three)
//and even if it did there's no reason to actually set the completely cosmetic display
if (isDedicated) exitWith{};

_billboard = _this;

_digits = _billboard getVariable "digits";
_numDigits = count _digits;

_number = _billboard getVariable "number";

//calculate each digit
_digitsToShow = [];

if (_number == -1337) then { //dashes
	for "_i" from 0 to _numDigits-1 do {
		_digitsToShow set[_i, -2];
	};
} else { //actual number
	_numberHit = false;
	for "_i" from _numDigits-1 to 0 step -1 do {
		_digitToShow = floor(_number / (10 ^ _i));
		
		if (!_numberHit && _digitToShow != 0) then {_numberHit = true};
		if (!_numberHit && _digitToShow == 0) then {_digitToShow = -1};
		
		_digitsToShow set [(_numDigits-1) - _i, _digitToShow];
		_number = _number % (10 ^ _i);
	};
	if (!_numberHit) then {_digitsToShow set[_numDigits - 1, 0]};
};

_setDigit = compile preprocessfilelinenumbers "numericBillboard\setDigit.sqf";
//display number
for "_i" from 0 to _numDigits-1 do {
	[_digits select _i, _digitsToShow select _i] spawn _setDigit;
};