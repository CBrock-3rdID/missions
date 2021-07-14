_player = _this select 0;

_controller = _player getVariable "controllerAT";
_mode = _controller getVariable "mode";
_range = 0;
while {_range =_range + 50; _range < 301} do {
  if !(_range == 200) then {
    _Str = str _range;
    _tempStr = "vehicle" + _Str;
    if !(isNil {_controller getVariable _tempStr}) then {
      _tempVeh = _controller getVariable _tempStr;
      deleteVehicle _tempVeh;
    };
  };
};

if (_mode == "Remove") then {
  hint parseText (format["<t align='center'>All Vehicles removed</t>"]);
}
else{
  sleep 0.05;
  _range = 0;
  while {_range =_range + 50; _range < 301} do {
    if !(_range == 200) then {
      _Str = str _range;
      _tempStr = "vehicle" + _Str;

      _math1 = -((_range / 50) * 33) - 5;

      _math2 = -((_range / 50) * 40) - 7;

      _pos = (_controller modelToWorld [_math1,_math2,0]);

      _random = selectRandom ["rhs_btr60_vdv","rhs_bmp1_vdv","rhs_bmp1_vdv"];
      _veh = _random createVehicle _pos;

      _veh setDir 305;

      _controller setVariable [_tempStr,_veh];
    };
  };
  hint parseText (format["<t align='center'>All Vehicles placed</t>"]);
};
