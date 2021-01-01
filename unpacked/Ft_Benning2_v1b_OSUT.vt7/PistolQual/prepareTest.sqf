_controller = _this select 0;
_player = _this select 1;

_controller setVariable["player", _player, true];

{_x animate["terc", 1];} forEach (_controller getVariable "allTargets");

_scoreBoard = _controller getVariable "scoreBoard";
[_scoreBoard, 0] execVM "numericBillboard\setNumber.sqf";
_controller setVariable["score", 0];
[_scoreBoard, 1] execVM "numericBillboard\setLit.sqf";

#define REPLACENULLWEAPON(X) call compile format["if (isNull %1) exitWith{[]}; weaponCargo %1", X]
#define REPLACENULLITEM(X) call compile format["if (isNull %1) exitWith{[]}; itemCargo %1", X]
_oldMagazines = [magazinesAmmoFull _player, weaponsItems _player];
_oldWeapons = [[], REPLACENULLWEAPON("uniformContainer _player"), REPLACENULLWEAPON("vestContainer _player"), REPLACENULLWEAPON("backpackContainer _player"), weapons _player];
_oldWeapons set[0, weapons _player - ((_oldWeapons select 1) + (_oldWeapons select 2) + (_oldWeapons select 3))];

_oldItems = [REPLACENULLITEM("uniformContainer _player"), REPLACENULLITEM("vestContainer _player"), REPLACENULLITEM("backpackContainer _player"), primaryWeaponItems _player, secondaryWeaponItems _player, handgunItems _player];

_oldObjects = [_oldWeapons, _oldMagazines, _oldItems];
_controller setVariable["300mQualRangeOldWeaponsMagazinesItems", _oldObjects];

"Pistol Qualification Test" hintC [
	"Take one shot at each visible target.",
	"When you are ready to begin, use the Start action on the sandbag.    "
];

removeAllWeapons _player;
_player addWeapon "506th_weap_m17f";
