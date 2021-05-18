_ctrl = 2700;
waitUntil {!isnull(findDisplay _ctrl) && !(isNull player)};

_listbox  = ((findDisplay _ctrl) displayCtrl 1500);

_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID player, []];
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
