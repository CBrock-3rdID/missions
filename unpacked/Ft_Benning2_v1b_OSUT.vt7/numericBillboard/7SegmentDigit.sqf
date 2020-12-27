//spawns and returns a 7 segment digit attached to the argument object

//written in Feb 2014 by Charles of the 13th SFG

private["_backplate", "_digit", "_A", "_B", "_C", "_D", "_E", "_F", "_G", "_segments"];

_backplate = _this;

_digit = "Land_FMradio_F" createVehicleLocal (getPos _backplate);

_A = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_A setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_A attachTo [_digit, [0, -0.5, 2]];
_A setVectorDirandUp [[1,0,0], [0,1,0]];

_B = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_B setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_B attachTo [_digit, [0.5, -0.5, 1.5]];
_B setVectorDirandUp [[0,0,1], [0,1,0]];

_C = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_C setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_C attachTo [_digit, [0.5, -0.5, 0.5]];
_C setVectorDirandUp [[0,0,1], [0,1,0]];

_D = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_D setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_D attachTo [_digit, [0, -0.5, 0]];
_D setVectorDirandUp [[1,0,0], [0,1,0]];

_E = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_E setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_E attachTo [_digit, [-0.5, -0.5, 0.5]];
_E setVectorDirandUp [[0,0,1], [0,1,0]];

_F = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_F setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_F attachTo [_digit, [-0.5, -0.5, 1.5]];
_F setVectorDirandUp [[0,0,1], [0,1,0]];

_G = "Target_Rail_End_F" createVehicleLocal (getPos _digit);
_G setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
_G attachTo [_digit, [0, -0.5, 1]];
_G setVectorDirandUp [[1,0,0], [0,1,0]];

_segments = [_A, _B, _C, _D, _E, _F, _G];
_digit setVariable["segments", _segments];

//return
_digit