//start and run the rifle qualification test

//Written in February 2014 by Charles of the 13th SFG

//Modified in April 2018 by B.Moedekjaer of the 3rdID

//Order/Times from DA Form 3595-R Sep 2008

_controller = _this select 0;
_player = _this select 1;

_controller setVariable["testRunning", true, true];
_player setVariable["testController", _controller];

_050m_targets = _controller getVariable "050mTargets";
_100m_targets = _controller getVariable "100mTargets";
_150m_targets = _controller getVariable "150mTargets";
_200m_targets = _controller getVariable "200mTargets";
_250m_targets = _controller getVariable "250mTargets";
_300m_targets = _controller getVariable "300mTargets";
_allTargets = _controller getVariable "allTargets";

_050m_idx = 0;
_100m_idx = 0;
_150m_idx = 0;
_200m_idx = 0;
_250m_idx = 0;
_300m_idx = 0;
#define next050m _050m_targets select _050m_idx; _050m_idx = _050m_idx + 1; if (_050m_idx >= count _050m_targets) then {_050m_idx = 0};
#define next100m _100m_targets select _100m_idx; _100m_idx = _100m_idx + 1; if (_100m_idx >= count _100m_targets) then {_100m_idx = 0};
#define next150m _150m_targets select _150m_idx; _150m_idx = _150m_idx + 1; if (_150m_idx >= count _150m_targets) then {_150m_idx = 0};
#define next200m _200m_targets select _200m_idx; _200m_idx = _200m_idx + 1; if (_200m_idx >= count _200m_targets) then {_200m_idx = 0};
#define next250m _250m_targets select _250m_idx; _250m_idx = _250m_idx + 1; if (_250m_idx >= count _250m_targets) then {_250m_idx = 0};
#define next300m _300m_targets select _300m_idx; _300m_idx = _300m_idx + 1; if (_300m_idx >= count _300m_targets) then {_300m_idx = 0};

sleep 5;

//set up event handlers
_targetEventHandlers = [];
Script_300mQualRange_targetEventHandler = compile preprocessFileLineNumbers "300mQualRange\targetEventHandler.sqf";
{_targetEventHandlers set [_forEachIndex, _x addEventHandler["HitPart", {(_this select 0) spawn Script_300mQualRange_targetEventHandler;}]]; _x setVariable["hit", false];} forEach _allTargets;
_controller setVariable["targetEventHandlers", _targetEventHandlers];

Script_300mQualRange_firedEventHander = compile preprocessFileLineNumbers "300mQualRange\firedEventHandler.sqf";
_firedEventHandler = _player addEventHandler["Fired", {
	_player = _this select 0;
	_player setVariable["firedScripts", (_player getVariable "firedScripts") + [_this spawn Script_300mQualRange_firedEventHander]];
}];
_player setVariable["firedEventHandler", _firedEventHandler];
_player setVariable["shotCount", 0];
_player setVariable["firedScripts", []];

_runTargetSet = compile preprocessFileLineNumbers "300mQualRange\runTargetSet.sqf";

//***************PRONE SUPPORTED***************
hint parseText "<t align='center' size='1.25'><t color='#8CD654' shadow='1'>Prone position </t><br /> 20 rounds</t>";
_player playMoveNow "AmovPpneMstpSrasWrflDnon";
sleep 1.1;
_controller setVariable["requiredStance", "PRONE"];
//LOAD
_player addMagazine ["30Rnd_556x45_Stanag", 20];
reload _player;
sleep 3;
//50m - 3s
_target1 = next050m;
[[_target1], 3, _player] call _runTargetSet;
//200m - 6s
_target1 = next200m;
[[_target1], 6, _player] call _runTargetSet;
//100m - 4s
_target1 = next100m;
[[_target1], 4, _player] call _runTargetSet;
//150m - 5s
_target1 = next150m;
[[_target1], 5, _player] call _runTargetSet;
//300m - 8s
_target1 = next300m;
[[_target1], 8, _player] call _runTargetSet;
//250m - 7s
_target1 = next250m;
[[_target1], 7, _player] call _runTargetSet;
//50m - 3s
_target1 = next050m;
[[_target1], 3, _player] call _runTargetSet;
//200m - 6s
_target1 = next200m;
[[_target1], 6, _player] call _runTargetSet;
//150m - 5s
_target1 = next150m;
[[_target1], 5, _player] call _runTargetSet;
//250m - 7s
_target1 = next250m;
[[_target1], 7, _player] call _runTargetSet;
//100m/200m - 8s
_target1 = next100m;
_target2 = next200m;
[[_target1, _target2], 8, _player] call _runTargetSet;
//150m/300m - 10s
_target1 = next150m;
_target2 = next300m;
[[_target1, _target2], 10, _player] call _runTargetSet;
//100m/250m - 9s
_target1 = next100m;
_target2 = next250m;
[[_target1, _target2], 9, _player] call _runTargetSet;
//200m - 6s
_target1 = next200m;
[[_target1], 6, _player] call _runTargetSet;
//150m - 5s
_target1 = next150m;
[[_target1], 5, _player] call _runTargetSet;
//50m/100m - 6s
_target1 = next050m;
_target2 = next100m;
[[_target1, _target2], 6, _player] call _runTargetSet;


//***************KNEELING UNSUPPORTED***************
hint parseText "<t align='center' size='1.25'><t color='#8CD654' shadow='1'>Kneeling position </t><br /> 10 rounds</t>";
_player playMoveNow "AmovPknlMstpSrasWrflDnon";
sleep 1.1;
_controller setVariable["requiredStance", "CROUCH"];
//RELOAD
removeAllWeapons _player;
_player addWeapon "rhs_weap_m16a4_carryhandle";
_player addMagazine ["30Rnd_556x45_Stanag", 10];
reload _player;
sleep 3;
//150m - 8s
_target1 = next150m;
[[_target1], 8, _player] call _runTargetSet;
//50m - 4s
_target1 = next050m;
[[_target1], 4, _player] call _runTargetSet;
//100m - 5s
_target1 = next100m;
[[_target1], 5, _player] call _runTargetSet;
//150m - 6s
_target1 = next150m;
[[_target1], 6, _player] call _runTargetSet;
//100m - 5s
_target1 = next100m;
[[_target1], 5, _player] call _runTargetSet;
//50m - 4s
_target1 = next050m;
[[_target1], 4, _player] call _runTargetSet;
//100m - 5s
_target1 = next100m;
[[_target1], 5, _player] call _runTargetSet;
//150m - 6s
_target1 = next150m;
[[_target1], 6, _player] call _runTargetSet;
//50m - 4s
_target1 = next050m;
[[_target1], 4, _player] call _runTargetSet;
//100m - 6s
_target1 = next100m;
[[_target1], 6, _player] call _runTargetSet;


//***************STANDING UNSUPPORTED***************
hint parseText "<t align='center' size='1.25'><t color='#8CD654' shadow='1'>Standing position </t><br /> 10 rounds</t>";
_player playMoveNow "AmovPercMstpSrasWrflDnon";
sleep 1.1;
_controller setVariable["requiredStance", "STAND"];
//RELOAD
removeAllWeapons _player;
_player addWeapon "rhs_weap_m16a4_carryhandle";
_player addMagazine ["30Rnd_556x45_Stanag", 10];
reload _player;
sleep 3;
//150m - 8s
_target1 = next100m;
[[_target1], 8, _player] call _runTargetSet;
//50m - 4s
_target1 = next050m;
[[_target1], 4, _player] call _runTargetSet;
//100m - 5s
_target1 = next100m;
[[_target1], 5, _player] call _runTargetSet;
//150m - 6s
_target1 = next100m;
[[_target1], 6, _player] call _runTargetSet;
//100m - 5s
_target1 = next100m;
[[_target1], 5, _player] call _runTargetSet;
//50m - 4s
_target1 = next050m;
[[_target1], 4, _player] call _runTargetSet;
//100m - 5s
_target1 = next100m;
[[_target1], 5, _player] call _runTargetSet;
//150m - 6s
_target1 = next100m;
[[_target1], 6, _player] call _runTargetSet;
//50m - 4s
_target1 = next050m;
[[_target1], 4, _player] call _runTargetSet;
//100m - 6s
_target1 = next100m;
[[_target1], 6, _player] call _runTargetSet;


//***SCORING***
//23-29 : Marksman
//30-35 : Sharpshooter
//36-40 : Expert
_score = _controller getVariable "score";
if (_score >= 36) then {
	//expert
	hint parseText (format["<t align='center'>You scored <br /> <t size='1.25'>%1 / 40</t> <br /> and qualified: <br /> <t color='#00DD00' size='1.5'>EXPERT</t></t>",_score]);
} else { if (_score >= 30) then {
	//sharpshooter
	hint parseText (format["<t align='center'>You scored <br /> <t size='1.25'>%1 / 40</t> <br /> and qualified: <br /> <t color='#FFF017' size='1.5'>SHARPSHOOTER</t></t>",_score]);
} else { if (_score >= 23) then {
	//marksman
	hint parseText (format["<t align='center'>You scored <br /> <t size='1.25'>%1 / 40</t> <br /> and qualified: <br /> <t color='#FFAA17' size='1.5'>MARKSMAN</t></t>",_score]);
} else {
	//no pass D:
	hint parseText (format["<t align='center'>You scored <br /> <t size='1.25'>%1 / 40</t> <br /> and <br /> <t color='#E60000' size='1.5'>DID NOT QUALIFY</t></t>",_score]);
};};};

//flash score on board for ~5 seconds
_scoreBoard = _controller getVariable "scoreBoard";
[_scoreBoard, -1] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, -1] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, -1] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, -1] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, -1] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;
[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";
sleep 0.5;

//reset test and everything
_controller setVariable["testRunScript", nil];
[_controller, _player] execVM "300mQualRange\resetTest.sqf";
