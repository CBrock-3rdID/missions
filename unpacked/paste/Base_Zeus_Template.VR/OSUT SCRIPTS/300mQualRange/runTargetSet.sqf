//show a set of target(s) for specified time, return on correct conditions

//Written in April 2020 by Morton of 3ID

_targets = _this select 0;
_timeToShow = _this select 1;
_player = _this select 2;

_numTargets = count _targets;
_target1 = _targets select 0;
_2targets = false;
if (_numTargets == 2) then {
	_2targets = true;
	_target2 = _targets select 1;
};

//put up target(s)
{_x animate["terc", 0];} forEach _targets;
sleep 1;

//wait for both hit, time up, or player missed
_startTime = time;
_endTime = _startTime + _timeToShow;
waitUntil {
	sleep 0.1;
	_targetsHit = _target1 getVariable "hit" && (if (_2targets) then {_target2 getVariable "hit"} else {true});
	_playerFired = ((_player getVariable "shotCount") >= _numTargets);
	(time >= _endTime) || (_targetsHit) || (_playerFired)
};

//put down target(s) that weren't hit
if !(_target1 getVariable "hit") then {
	_target1 animate["terc", 1];
};
if (_2targets) then {
	if !(_target2 getVariable "hit") then {
		_target2 animate["terc", 1];
	};
};

//wait a little
sleep 3;

//unmark targets, reset player shot count
_target1 setVariable["hit", false];
if (_2targets) then {_target2 setVariable["hit", false];};

_firedScripts = _player getVariable "firedScripts";
{
	if !(scriptDone _x) then {terminate _x;};
} forEach _firedScripts;
_player setVariable["firedScripts", []];
_player setVariable["shotCount", 0];