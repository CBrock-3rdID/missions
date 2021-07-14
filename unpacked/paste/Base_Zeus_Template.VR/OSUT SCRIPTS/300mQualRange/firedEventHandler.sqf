//handle shots made by the player during the test

//Written in February 2014 by Charles of the 13th SFG

_player = _this select 0;
_bullet = _this select 6;

_startPos = getPosASL _bullet;

waitUntil {
	sleep 0.1;
	//500^2 is more than enough. It's a 300m range after all
	isNull _bullet || ((_startPos distanceSqr (getPosASL _bullet)) > 250000)
};

_player setVariable["shotCount", (_player getVariable "shotCount") + 1];