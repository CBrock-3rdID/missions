//turns a numericBillboard's lights on and off
//note: this obviously does nothing if it has no lights, and also it has no effect during the daytime
//to use, call with argument: [<numericBillboard>, (1 for on, 0 for off)]
//THIS FUNCTION HAS GLOBAL EFFECTS - it only needs to be called on one machine and its effects will propagate to all others

//written in Feb 2014 by Charles of the 13th SFG

_billboard = _this select 0;
_lightState = _this select 1;

[-1, {
	_lights = (_this select 0) getVariable "lights";
	{_x setHit["Light_1_hitpoint", 1-(_this select 1)];} forEach _lights;
}, [_billboard, _lightState]] call CBA_fnc_globalExecute;