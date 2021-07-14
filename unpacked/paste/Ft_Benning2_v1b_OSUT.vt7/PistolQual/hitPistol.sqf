_target = _this select 0;
_player = _this select 1;

_controller = _player getVariable "testController";

_scoreBoard = _controller getVariable "scoreBoard";

_score = _controller getVariable "pistolScore";

_score = _score + 1;

_controller setVariable ["pistolScore", _score];

[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";

[_controller, _player] execVM "PistolQual\stayDown.sqf";
