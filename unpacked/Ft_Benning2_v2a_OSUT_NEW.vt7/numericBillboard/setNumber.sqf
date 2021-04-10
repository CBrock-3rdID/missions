//displays a number on a numericBillboard
//to use, call with argument: [<numericBillboard>, <number to show>]
//set to -1 to blank display, set to -1337 to make all digits dashes
//all numbers will be rounded down to the nearest whole number
//negative numbers not supported at this time
//THIS FUNCTION HAS GLOBAL EFFECTS - it only needs to be called on one machine and its effects will propagate to all others

//written in Feb 2014 by Charles of the 13th SFG

_billboard = _this select 0;
_number = floor(_this select 1);

//only update if needed
if ((_billboard getVariable "number") != _number) then {
	_billboard setVariable["number", _number, true];
	[-2, {_this execVM "numericBillboard\localSetNumber.sqf";}, _billboard] call CBA_fnc_globalExecute;
};