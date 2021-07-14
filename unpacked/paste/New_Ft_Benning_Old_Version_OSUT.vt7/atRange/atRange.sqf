//////////////////////////////////////////////////////////////////
// AT Range file for 3rdID
// Created by: B.Moedekjaer in April 2018
//////////////////////////////////////////////////////////////////

_controller = _this select 0;
_player = _this select 1;

_player setVariable ["controllerAT",_controller];

_mode = _controller getVariable "mode";

_tab = "3rd_dialog_" + _mode;

disableSerialization;

_handle = createdialog _tab;
