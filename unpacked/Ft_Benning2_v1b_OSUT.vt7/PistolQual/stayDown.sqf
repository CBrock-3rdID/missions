_controller = _this select 0;
_player = _this select 1;

_targets = _controller getVariable "allTargets";

_number = _player getVariable "rNumber";

_target = _targets select _number;

sleep 2;
waitUntil	{sleep 0.01; _target animationPhase "terc" < 0.99999};
_target animate["terc", 1];
