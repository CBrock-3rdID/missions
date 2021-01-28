//handle shots made to the targets

//Written in February 2014 by Charles of the 13th SFG

_target = _this select 0;
_player = _this select 1;

//if shot by nonlocal player, keep target up
if (_player != player) exitWith {
	sleep 0.05;
	_target animate["terc", 0];
};

_controller = _player getVariable "testController";

//if they only hit the base, don't count it as a hit
if (isNil{_this select 5 select 0}) exitWith{};

//or if it's down (though if you do this you probably deserve the point lol)
if ((_target animationPhase "terc") > 0.9) exitWith{};

//were they in the correct stance? if not fire a hint, pop back up, and exit
if (stance _player != _controller getVariable "requiredStance") exitWith {
	hint parseText (format["<t color='#FF0000' size='1.5' align='center'>Incorrect Stance! <br /> Hit not counted.</t> <br /><br /> Get into the %1 position.", _controller getVariable "requiredStance"]);
	sleep 0.05;
	_target animate["terc", 0];
};

//increment score, mark hit
_score = (_controller getVariable "score") + 1;
_controller setVariable["score", _score];
[(_controller getVariable "scoreBoard"), _score] execVM "numericBillboard\setNumber.sqf";

_target setVariable["hit", true];

//keep the target down
sleep 2;
waitUntil	{sleep 0.07; _target animationPhase "terc" < 0.98};
_target animate["terc", 1];
