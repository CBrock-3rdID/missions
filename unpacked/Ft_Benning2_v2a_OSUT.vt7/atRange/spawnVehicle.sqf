_range = _this select 0;
_player = _this select 1;

_controller = _player getVariable "controllerAT";
_mode = _controller getVariable "mode";

_Str = str _range;
_tempStr = "vehicle" + _Str;
if !(isNil {_controller getVariable _tempStr}) then {
  _tempVeh = _controller getVariable _tempStr;
  deleteVehicle _tempVeh;
};

if (_mode == "Remove") then {
  hint parseText (format["<t align='center'>Vehicle removed - %1m</t>",_range]);
}
else{
  sleep 0.5;
  _angle = 38;
  _x = 0 * (cos _angle) - _range * (sin _angle);
  _y = 0 * (sin _angle) + _range * (cos _angle);

  _pos = (_controller modelToWorld [_x,_y,0]);

  _random = selectRandom ["rhs_btr60_vdv","rhs_uaz_vdv","rhs_bmp1_vdv"];
  _veh = _random createVehicle _pos;

  _veh setDir 305;

  _controller setVariable [_tempStr,_veh];

  hint parseText (format["<t align='center'>Vehicle placed - %1m</t>",_range]);
};
