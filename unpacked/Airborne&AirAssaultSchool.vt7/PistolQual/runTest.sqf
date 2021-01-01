//////////////////////////////////////////////////////////////////
// Pistol Qualification file for 3rdID
// Created by: B.Moedekjaer in April 2018
//////////////////////////////////////////////////////////////////

_controller = _this select 0;
_player = _this select 1;

_controller setVariable["testRunning", true, true];
_player setVariable["testController", _controller];

_targets = _controller getVariable "allTargets";

_inc     = 0;
_score   = 0;
_scoreBoard = _controller getVariable "scoreBoard";
[_scoreBoard, _score] execVM "numericBillboard\setNumber.sqf";
{_x  animate["terc",1]} forEach _targets;
_controller setVariable ["pistolScore", _score];
hint parseText "<t align='center' size='1.25'><t color='#8CD654' shadow='1'>Standing position </t><br /> 15 rounds</t>";
_player addMagazine ["506th_mag_m17_17rnd9mm",15];
reload _player;
sleep 5;

_rlast = 0;
while {_inc<15} do
{
_rnumber = random 6-.25;
_int = _rnumber%1;
_rnumber = _rnumber-_int;
if (_rlast == _rnumber) then {
  _rnumber = _rnumber + 1;
  if(_rnumber == 6) then {
    _rnumber = 0;
  };
};
_rtarget = _targets select _rnumber;
_rtarget animate["terc", 0];
_player setVariable ["rNumber",_rnumber];
_rtarget addEventHandler ["HitPart", {(_this select 0) execVM "PistolQual\hitPistol.sqf"}];
sleep 3.5;
_rtarget removeEventHandler ["HitPart", 0];
_rtarget animate["terc", 1];
_inc = _inc + 1;
_rlast = _rnumber;

};
sleep 1;
_score = _controller getVariable "pistolScore";
hint parseText (format["<t align='center'>You scored <br /> <t size='1.25'>%1 / 15</t> <br /></t>",_score]);
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

_controller setVariable["testRunScript", nil];
[_controller, _player] execVM "PistolQual\resetTest.sqf";
