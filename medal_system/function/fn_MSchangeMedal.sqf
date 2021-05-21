//SE!!!!!!!!!!!!!!!!!!
params["_number","_mode","_player"];
if !(isServer) exitwith {};
_today = str(systemTime select 0)+"-"+str(systemTime select 1)+"-"+str(systemTime select 2);
_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID _player, [[-1,name _player]]];

_playerMedalIndex = [];
{
	_playerMedalIndex = _playerMedalIndex + [_x#0];
} forEach _playerMedalList;

_playerMedalList select {_x#0 == _number};

switch (_mode) do {
	case 1: { 
		if (_number in _playerMedalIndex)exitwith{};
		_playerMedalList = _playerMedalList + [[_number,_today]];
	};
	case 2:{
		if !(_number in _playerMedalIndex)exitwith{};
		_deleteList = _playerMedalList select {_x#0 == _number};
		_playerMedalList = _playerMedalList - _deleteList;
	};
	default { };
};

listOfMetalOwned set [getPlayerUID _player,_playerMedalList];
profileNamespace setVariable ["listOfMetalOwned",listOfMetalOwned];
publicVariable "listOfMetalOwned";