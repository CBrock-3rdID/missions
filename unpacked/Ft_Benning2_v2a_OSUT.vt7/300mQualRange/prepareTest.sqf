//prepare the range and player for qual test

//Written in February 2014 by Charles of the 13th SFG

_controller = _this select 0;
_player = _this select 1;

_controller setVariable["player", _player, true];

//set all targets down
{_x animate["terc", 1];} forEach (_controller getVariable "allTargets");

//scoreboard and player score var to 0
_scoreBoard = _controller getVariable "scoreBoard";
[_scoreBoard, 0] execVM "numericBillboard\setNumber.sqf";
_controller setVariable["score", 0];
[_scoreBoard, 1] execVM "numericBillboard\setLit.sqf";

//helpers (whyyyyyyy is isNull not like isNil?)
#define REPLACENULLWEAPON(X) call compile format["if (isNull %1) exitWith{[]}; weaponCargo %1", X]
#define REPLACENULLITEM(X) call compile format["if (isNull %1) exitWith{[]}; itemCargo %1", X]
//save weapons/mags/items
//weapons not currently equipped (i.e. in backpacks or carrier rigs and stuff) will be restored with default accessories - there is no way to add custom-accessories to unequipped weapons
//luckily (and really this is half the reason why the command for that hasn't been added), doing that is probably quite rare among players
_oldMagazines = [magazinesAmmoFull _player, weaponsItems _player];
_oldWeapons = [[], REPLACENULLWEAPON("uniformContainer _player"), REPLACENULLWEAPON("vestContainer _player"), REPLACENULLWEAPON("backpackContainer _player"), weapons _player];
_oldWeapons set[0, weapons _player - ((_oldWeapons select 1) + (_oldWeapons select 2) + (_oldWeapons select 3))];

_oldItems = [REPLACENULLITEM("uniformContainer _player"), REPLACENULLITEM("vestContainer _player"), REPLACENULLITEM("backpackContainer _player"), primaryWeaponItems _player, secondaryWeaponItems _player, handgunItems _player];

_oldObjects = [_oldWeapons, _oldMagazines, _oldItems];
_controller setVariable["300mQualRangeOldWeaponsMagazinesItems", _oldObjects];

"Rifle Qualification Test" hintC [
	"Take one shot at each visible target. If two targets are visible and you miss your first shot, you may use your second shot on the first target.",
	"Any unused rounds will be cleared between sections - don't try to save your ammo for later.",
	"Any shots taken from a prone or sitting position will not count towards your score in the kneeling section.",
	"When you are ready to begin, use the Start action on the laptop.    "
];

//remove all weapons/mags/items
//replace with ironsight M16A2
removeAllWeapons _player;
_player addWeapon "rhs_weap_m16a4_carryhandle";