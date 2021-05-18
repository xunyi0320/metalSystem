params ["_player"];
_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID _player, [[0,"0"]]];
if (_playerMedalList isEqualTo [[0,"0"]])then
{
	_uid = getPlayerUID _player;
	listOfMetalOwned set [_uid,[[-1,name _player]]];
};