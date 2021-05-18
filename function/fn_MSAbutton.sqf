params["_mode"];
//1:向所有玩家颁发任务勋章 2.颁发勋章 3.撤销勋章
_ctrl = 2700;

_playerListbox = ((findDisplay _ctrl) displayCtrl 1500);
_playerindex = lbSelection _playerListbox;
if (_playerindex isEqualTo []) then {
	_playerindex = [0];
};
_playerindex = _playerindex#0;
_player = allPlayers select  _playerindex;

_metalListbox = ((findDisplay _ctrl) displayCtrl 1502);
_metalindex = lbSelection _metalListbox;
if (_metalindex isEqualTo []) then {
	_metalindex = [0];
};
_metalindex = _metalindex#0;
_metal = medalList select  _metalindex;

_listbox = ((findDisplay _ctrl) displayCtrl 1501);
_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID player, []];
_playerMedalIndex = [];
{
	_playerMedalIndex = _playerMedalIndex + [_x#0];
	
} forEach _playerMedalList;
_playerMedalIndex = _playerMedalIndex -[-1];
_medalListDetail = medalList select {_x#0 in _playerMedalIndex};


_ownedMetalListbox = ((findDisplay _ctrl) displayCtrl 1501);
_ownedMetalindex = lbSelection _ownedMetalListbox;
if (_ownedMetalindex isEqualTo []) then {
	_ownedMetalindex = [0];
};
_ownedMetalindex = _ownedMetalindex#0;
_ownedMetal = _medalListDetail select  _ownedMetalindex;


switch (_mode) do {
	case 1: {
		if (isnil "correctMedal")exitwith{hint "未定义任务勋章";};
		{
			[correctMedal#0,1,_x] remoteExec ["JZ_fnc_MSchangeMedal",2];
			
		} forEach allPlayers;
	};
	case 2:{
		[_metal#0,1,_player] remoteExec ["JZ_fnc_MSchangeMedal",2];
	};
	case 3:{
		[_ownedMetal#0,2,_player] remoteExec ["JZ_fnc_MSchangeMedal",2];
	};
	default { };
};


sleep 0.1;
lbClear  ((findDisplay _ctrl) displayCtrl 1501);

_listbox = ((findDisplay _ctrl) displayCtrl 1501);
_playerMedalList = listOfMetalOwned getOrDefault [getPlayerUID _player, []];
_playerMedalIndex = [];
{
	_playerMedalIndex = _playerMedalIndex + [_x#0];
	
} forEach _playerMedalList;
_playerMedalIndex = _playerMedalIndex -[-1];
_medalListDetail = medalList select {_x#0 in _playerMedalIndex};
diag_log _medalListDetail;
{
	_text = _x#1;
	_listbox lbAdd _text;
} forEach  _medalListDetail;