_controller = _this select 0;

_controller setVariable ["mode","Place"];

_controller addAction ["<t color=""#edea61"">" + "Open AT Menu","atRange\atRange.sqf",nil,1.5,true,true,"","true",5,false,"",""];
_controller addAction ["Get M136","loadouts\osut\m136.sqf",nil,1.5,true,true,"","true",5,false,"",""];
_controller addAction ["Remove M136",{player removeWeapon "rhs_weap_M136";},nil,1.5,true,true,"","true",5,false,"",""];
