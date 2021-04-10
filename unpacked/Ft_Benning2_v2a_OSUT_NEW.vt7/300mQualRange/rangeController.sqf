//300m Basic Rifle Marksmanship Qualification scoring script
//use on some that you want to have the actions to control the lane. Put in init:
//			null = [this, [[array of 50m target(s)], [array of 100m target(s)], [150m], [200m], [250m], [300m]], numericBillboard instance] execVM "300mQualRange\rangeController.sqf";

//Written in February 2014 by Charles of the 13th SFG

_controller = _this select 0;
_targets = _this select 1;
_scoreBoard = _this select 2;

//extract parameters and set object variables
_050m_targets = _targets select 0;
_100m_targets = _targets select 1;
_150m_targets = _targets select 2;
_200m_targets = _targets select 3;
_250m_targets = _targets select 4;
_300m_targets = _targets select 5;
_allTargets = _050m_targets + _100m_targets + _150m_targets + _200m_targets + _250m_targets + _300m_targets;

_controller setVariable["050mTargets", _050m_targets];
_controller setVariable["100mTargets", _100m_targets];
_controller setVariable["150mTargets", _150m_targets];
_controller setVariable["200mTargets", _200m_targets];
_controller setVariable["250mTargets", _250m_targets];
_controller setVariable["300mTargets", _300m_targets];
_controller setVariable["allTargets", _allTargets];

//scoreboard stuff (start with light off)
_controller setVariable["scoreBoard", _scoreBoard];
[_scoreBoard, 0] execVM "numericBillboard\setLit.sqf";

//add actions (no need to add or remove, we use conditions for that)
_controller addAction["Prepare qualification test", "300mQualRange\prepareTest.sqf", nil, 10, true, true, "", "isNil{_target getVariable 'player'}"];
_controller addAction["Start qualification test", {_runScript = _this execVM "300mQualRange\runTest.sqf"; (_this select 0) setVariable["testRunScript", _runScript];}, nil, 10, true, true, "", "(_target getVariable 'player') == _this && isNil{_target getVariable 'testRunning'}"];
_controller addAction["Cancel test and reset range", "300mQualRange\resetTest.sqf", nil, 9, true, true, "", "(_target getVariable 'player') == _this"];