//displays a number (0-9) on  a 7SegmentDigit
//passing -1 hides all segments
//passing -2 shows dash

//written in Feb 2014 by Charles of the 13th SFG

private["_digit", "_number", "_segments", "_A", "_B", "_C", "_D", "_E", "_F", "_G"];

_digit = _this select 0;
_number = _this select 1;

_segments = _digit getVariable "segments";
_A = _segments select 0;
_B = _segments select 1;
_C = _segments select 2;
_D = _segments select 3;
_E = _segments select 4;
_F = _segments select 5;
_G = _segments select 6;

switch(_number) do {
	case -2: { //dash
		_A hideObject true;
		_B hideObject true;
		_C hideObject true;
		_D hideObject true;
		_E hideObject true;
		_F hideObject true;
		_G hideObject false;
	};
	
	case -1: { //blank
		_A hideObject true;
		_B hideObject true;
		_C hideObject true;
		_D hideObject true;
		_E hideObject true;
		_F hideObject true;
		_G hideObject true;
	};
	
	case 0: {
		_A hideObject false;
		_B hideObject false;
		_C hideObject false;
		_D hideObject false;
		_E hideObject false;
		_F hideObject false;
		_G hideObject true;
	};
	
	case 1: {
		_A hideObject true;
		_B hideObject false;
		_C hideObject false;
		_D hideObject true;
		_E hideObject true;
		_F hideObject true;
		_G hideObject true;
	};
	
	case 2: {
		_A hideObject false;
		_B hideObject false;
		_C hideObject true;
		_D hideObject false;
		_E hideObject false;
		_F hideObject true;
		_G hideObject false;
	};
	
	case 3: {
		_A hideObject false;
		_B hideObject false;
		_C hideObject false;
		_D hideObject false;
		_E hideObject true;
		_F hideObject true;
		_G hideObject false;
	};
	
	case 4: {
		_A hideObject true;
		_B hideObject false;
		_C hideObject false;
		_D hideObject true;
		_E hideObject true;
		_F hideObject false;
		_G hideObject false;
	};
	
	case 5: {
		_A hideObject false;
		_B hideObject true;
		_C hideObject false;
		_D hideObject false;
		_E hideObject true;
		_F hideObject false;
		_G hideObject false;
	};
	
	case 6: {
		_A hideObject false;
		_B hideObject true;
		_C hideObject false;
		_D hideObject false;
		_E hideObject false;
		_F hideObject false;
		_G hideObject false;
	};
	
	case 7: {
		_A hideObject false;
		_B hideObject false;
		_C hideObject false;
		_D hideObject true;
		_E hideObject true;
		_F hideObject true;
		_G hideObject true;
	};
	
	case 8: {
		_A hideObject false;
		_B hideObject false;
		_C hideObject false;
		_D hideObject false;
		_E hideObject false;
		_F hideObject false;
		_G hideObject false;
	};
	
	case 9: {
		_A hideObject false;
		_B hideObject false;
		_C hideObject false;
		_D hideObject false;
		_E hideObject true;
		_F hideObject false;
		_G hideObject false;
	};
	
	default {
		//this shouldn't be called but if something outside -2 to 9 gets passed just do nothing
	};
};