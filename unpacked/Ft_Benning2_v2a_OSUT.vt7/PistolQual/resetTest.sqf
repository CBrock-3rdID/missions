_controller = _this select 0;
_player = _this select 1;

if (isNil{_controller getVariable "player"}) exitWith{};

if (!isNil{_controller getVariable "testRunScript"}) then {
	terminate (_controller getVariable "testRunScript");
	_controller setVariable["testRunScript", nil];
};

_controller setVariable["player", nil, true];
_player setVariable["testController", nil];

[_player, _controller getVariable "300mQualRangeOldWeaponsMagazinesItems"] call compile preprocessFileLineNumbers "300mQualRange\restoreWeapons.sqf";

_controller setVariable["player", nil, true];
_controller setVariable ["rTarget", nil];
_player setVariable["testController", nil];
_player setVariable["shotCount", nil];
_controller setVariable["firedScripts", nil];

_allTargets = _controller getVariable "allTargets";
{_x animate["terc", 0]; _x setVariable["hit", true];} forEach _allTargets;

{_x removeEventHandler ["HitPart", 0]} forEach _Alltargets;

//if already started (vs just prepared)
if (!isNil{_controller getVariable "testRunning"}) then {
	_controller setVariable["testRunning", nil, true];
};

_scoreBoard = _controller getVariable "scoreBoard";
[_scoreBoard, -1337] execVM "numericBillboard\setNumber.sqf";
[_scoreBoard, 0] execVM "numericBillboard\setLit.sqf";
