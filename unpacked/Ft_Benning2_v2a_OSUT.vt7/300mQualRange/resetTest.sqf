//reset test and range

//Written in February 2014 by Charles of the 13th SFG

_controller = _this select 0;
_player = _this select 1;

//check to make sure that we don't run two resets at the same time
if (isNil{_controller getVariable "player"}) exitWith{};

//stop test script if mid-run cancellation
if (!isNil{_controller getVariable "testRunScript"}) then {
	terminate (_controller getVariable "testRunScript");
	_controller setVariable["testRunScript", nil];
};

//this also serves to mark reset as processing
_controller setVariable["player", nil, true];

//restore saved weapons
[_player, _controller getVariable "300mQualRangeOldWeaponsMagazinesItems"] call compile preprocessFileLineNumbers "300mQualRange\restoreWeapons.sqf";

//reset object variables
_controller setVariable["player", nil, true];
_player setVariable["testController", nil];
_player setVariable["shotCount", nil];
_controller setVariable["firedScripts", nil];

//set all targets up (also set "hit" to true in case any runtargetset scripts are still running - this prevents them from putting down the targets)
_allTargets = _controller getVariable "allTargets";
{_x animate["terc", 0]; _x setVariable["hit", true];} forEach _allTargets;

//if already started (vs just prepared)
if (!isNil{_controller getVariable "testRunning"}) then {
	_controller setVariable["testRunning", nil, true];

	//remove target event handlers
	_targetEventHandlers = _controller getVariable "targetEventHandlers";
	{_x removeEventHandler ["HitPart", _targetEventHandlers select _forEachIndex];} forEach _allTargets;
	_controller setVariable["targetEventHandlers", nil];

	_player removeEventHandler["Fired",_player getVariable "firedEventHandler"];
	_player setVariable["firedEventHandler", nil];
};

//reset scoreboard display and lighting
_scoreBoard = _controller getVariable "scoreBoard";
[_scoreBoard, -1337] execVM "numericBillboard\setNumber.sqf";
[_scoreBoard, 0] execVM "numericBillboard\setLit.sqf";