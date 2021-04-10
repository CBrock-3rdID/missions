_player = _this select 0;
_modeNum = _this select 1;

_controller = _player getVariable "controllerAT";

if (_modeNum == 0) then
{
  _controller setVariable ["mode","Place"];
  hint parseText (format["<t align='center'>Mode - Place</t>"]);
}
else
{
  _controller setVariable ["mode","Remove"];
  hint parseText (format["<t align='center'>Mode - Remove</t>"]);
};

closeDialog 0;

_mode = _controller getVariable "mode";

_tab = "3rd_dialog_" + _mode;

_handle = createdialog _tab;
