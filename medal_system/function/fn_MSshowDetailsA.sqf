_ctrl = 2700;
lbClear  ((findDisplay _ctrl) displayCtrl 1501);
_listbox = ((findDisplay _ctrl) displayCtrl 1500);

_playerindex = lbSelection _listbox;
if (_playerindex isEqualTo []) then {
	_playerindex = [0];
};
_playerindex = _playerindex#0;
_player = allPlayers select  _playerindex;

_textindex = lbSelection _listbox;
if (_textindex isEqualTo []) then {
	_textindex = [0];
};
_textindex = _textindex#0;

_listbox = ((findDisplay _ctrl) displayCtrl 1501);
_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID _player, []];
_playerMedalIndex = [];
{
	_playerMedalIndex = _playerMedalIndex + [_x#0];
	
} forEach _playerMedalList;
_playerMedalIndex = _playerMedalIndex -[-1];
_medalListDetail = medalList select {_x#0 in _playerMedalIndex};

{
	_text = _x#1;
	_listbox lbAdd _text;
} forEach  _medalListDetail;