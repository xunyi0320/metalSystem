_ctrl = 2700;
waitUntil {!isnull(findDisplay _ctrl) && !(isNull player)};

_listbox = ((findDisplay _ctrl) displayCtrl 1500);
_textCTR = ((findDisplay _ctrl) displayCtrl 1002);

_textindex = lbSelection _listbox;if (_textindex isEqualTo []) then {
	_textindex = [0];
};
_textindex = _textindex#0;

_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID player, []];
_playerMedalList = _playerMedalList - [[-1,name player]];

_playerMedalIndex = [];
_playerMedalTime = [];
{
	_playerMedalIndex = _playerMedalIndex + [_x#0];
	_playerMedalTime = _playerMedalTime + [_x#1];
	
} forEach _playerMedalList;

_medalListDetail = medalList select {_x#0 in _playerMedalIndex};

_correctDetail = _medalListDetail select _textindex;
_correctTime = _playerMedalTime select _textindex;

_text = _correctDetail#1 + endl + _correctDetail#2 + endl + "获得时间:"+ _correctTime;

_textCTR ctrlSetText _text ;