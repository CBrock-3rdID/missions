_controller = _this select 0;
_targets = _this select 1;
_scoreBoard = _this select 2;

_controller setVariable["scoreBoard", _scoreBoard];
[_scoreBoard, 0] execVM "numericBillboard\setLit.sqf";

_controller setVariable["allTargets", _targets];

_controller addAction["Prepare qualification test", "PistolQual\prepareTest.sqf", nil, 10, true, true, "", "isNil{_target getVariable 'player'}"];
_controller addAction["Start qualification test", {_runScript = _this execVM "PistolQual\runTest.sqf"; (_this select 0) setVariable["testRunScript", _runScript];}, nil, 10, true, true, "", "(_target getVariable 'player') == _this && isNil{_target getVariable 'testRunning'}"];
_controller addAction["Cancel test and reset range", "PistolQual\resetTest.sqf", nil, 9, true, true, "", "(_target getVariable 'player') == _this"];
