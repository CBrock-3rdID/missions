//define some helpers
_fillUpUniform = {
	_oldLoad = loadUniform _this;
	_player addItemToUniform "ItemWatch";
	_newLoad = loadUniform _this;
	_deltaLoad = _newLoad - _oldLoad;
	if (_deltaLoad == 0) exitWith{0}; //already full
	
	_numWatches = floor ((1 - _newLoad) / _deltaLoad);
	(uniformContainer _player) addItemCargo ["ItemWatch", _numWatches];
	
	(_numWatches + 1)
};
_unfillUniform = {
	_numWatches = _this select 1;
	while {_numWatches > 0} do {
		(_this select 0) removeItemFromUniform "ItemWatch";
		_numWatches = _numWatches - 1;
	};
};
_fillUpVest = {
	_oldLoad = loadVest _this;
	_player addItemToVest "ItemWatch";
	_newLoad = loadVest _this;
	_deltaLoad = _newLoad - _oldLoad;
	if (_deltaLoad == 0) exitWith{0}; //already full
	
	_numWatches = floor ((1 - _newLoad) / _deltaLoad);
	(vestContainer _player) addItemCargo ["ItemWatch", _numWatches];
	
	(_numWatches + 1)
};
_unfillVest = {
	_numWatches = _this select 1;
	while {_numWatches > 0} do {
		(_this select 0) removeItemFromVest "ItemWatch";
		_numWatches = _numWatches - 1;
	};
};
_fillUpBackpack = {
	_oldLoad = loadBackpack _this;
	_player addItemToBackpack "ItemWatch";
	_newLoad = loadBackpack _this;
	_deltaLoad = _newLoad - _oldLoad;
	if (_deltaLoad == 0) exitWith{0}; //already full
	
	_numWatches = floor ((1 - _newLoad) / _deltaLoad);
	(backpackContainer _player) addItemCargo ["ItemWatch", _numWatches];
	
	(_numWatches + 1)
};
_unfillBackpack = {
	_numWatches = _this select 1;
	while {_numWatches > 0} do {
		(_this select 0) removeItemFromBackpack "ItemWatch";
		_numWatches = _numWatches - 1;
	};
};

///////////////////////////////////////////////////////////////////////////

//actual script start
_player = _this select 0;
_oldObjects = _this select 1;

removeAllWeapons _player;
_oldWeapons = _oldObjects select 0;
_oldMagazines = _oldObjects select 1;
_oldItems = _oldObjects select 2;

//get currently loaded mags
_magsEquipped = [];
_magsForUniform = [];
_magsForVest = [];
_magsForBackpack = [];
{
	if (!isNil{_x select 4}) then {
		_weap = _x select 0;
		_mag = _x select 4; // [magtype, ammoLevel]
		
		call {
			if (_weap in (_oldWeapons select 0)) exitWith { //equipped
				_magsEquipped set[count _magsEquipped, _mag];
			}; if (_weap in (_oldWeapons select 1)) exitWith { //uniform
				_magsForUniform set[count _magsForUniform, _mag];
			}; if (_weap in (_oldWeapons select 2)) exitWith { //vest
				_magsForVest set[count _magsForVest, _mag];
			}; if (_weap in (_oldWeapons select 3)) exitWith { //backpack
				_magsForBackpack set[count _magsForBackpack, _mag];	
			};
		};
	};
} forEach (_oldMagazines select 1);

//add mags loaded into equipped weapons
{_player addMagazine _x} forEach _magsEquipped;

//add equipped weapons and their attachments
{_player addWeapon _x;} forEach (_oldWeapons select 0);
{_player addPrimaryWeaponItem _x;} forEach (_oldItems select 3);
{_player addSecondaryWeaponItem _x;} forEach (_oldItems select 4);
{_player addHandgunItem _x;} forEach (_oldItems select 5);


//add mags for unequipped weapons
//to uniform
_numWatchesVest = _player call _fillUpVest;
_numWatchesBackpack = _player call _fillUpBackpack;
{_player addMagazine _x} forEach _magsForUniform;
//vest
_numWatchesUniform = _player call _fillUpUniform;
[_player, _numWatchesVest] call _unfillVest;
{_player addMagazine _x} forEach _magsForVest;
//backpack
_numWatchesVest = _player call _fillUpVest;
[_player, _numWatchesBackpack] call _unfillBackpack;
{_player addMagazine _x} forEach _magsForBackpack;
//remove all those extra watches
[_player, _numWatchesUniform] call _unfillUniform;
[_player, _numWatchesVest] call _unfillVest;

//add unequipped weapons
{_player addItemToUniform _x;} forEach (_oldWeapons select 1);
{_player addItemToVest _x;} forEach (_oldWeapons select 2);
{_player addItemToBackpack _x;} forEach (_oldWeapons select 3);

//get unloaded mags
_magsForUniform = [];
_magsForVest = [];
_magsForBackpack = [];
_magsForOther = [];
{
	if !(_x select 2) then {
		_mag = [_x select 0, _x select 1]; // [magtype, ammoLevel]
		
		switch(_x select 4) do {
			case "Uniform": {
				_magsForUniform set[count _magsForUniform, _mag];
			};
			case "Vest": {
				_magsForVest set[count _magsForVest, _mag];
			};
			case "Backpack": {
				_magsForBackpack set[count _magsForBackpack, _mag];
			};
		};
	} else {
		//if a grenade/smoke/chemlight
		if !((_x select 4) in (_oldWeapons select 4)) then {
			_magsForOther set[count _magsForOther, _x select 0];
		};
	};
} forEach (_oldMagazines select 0);

//add unloaded mags
//to uniform
_numWatchesVest = _player call _fillUpVest;
_numWatchesBackpack = _player call _fillUpBackpack;
{_player addMagazine _x} forEach _magsForUniform;
//vest
_numWatchesUniform = _player call _fillUpUniform;
[_player, _numWatchesVest] call _unfillVest;
{_player addMagazine _x} forEach _magsForVest;
//backpack
_numWatchesVest = _player call _fillUpVest;
[_player, _numWatchesBackpack] call _unfillBackpack;
{_player addMagazine _x} forEach _magsForBackpack;
//remove all those extra watches
[_player, _numWatchesUniform] call _unfillUniform;
[_player, _numWatchesVest] call _unfillVest;

//add items
{_player addItemToUniform _x;} forEach (_oldItems select 0);
{_player addItemToVest _x;} forEach (_oldItems select 1);
{_player addItemToBackpack _x;} forEach (_oldItems select 2);

//add in the magsForOther grenades that we isolated a while back
//these were taken from the uniform/vest/backpack but we have no way to tell which so add wherever there's space
{_player addMagazine _x} forEach _magsForOther;