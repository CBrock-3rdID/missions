private ["_phone", "_explosive"];
_phone = _this select 0;
_explosive = _this select 1;

_soundFile = selectRandom ["\audio\nokia1.ogg", "\audio\nokia2.ogg"];

playSound3D [getMissionPath _soundFile, _phone, true];

[_explosive] spawn {
	params ["_explosive"];
	sleep 2.5;
	_explosive setDamage 1;
};
