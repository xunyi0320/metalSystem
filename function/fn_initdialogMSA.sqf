_ctrl = 2700;
waitUntil {!isnull(findDisplay _ctrl) && !(isNull player)};

_listbox  = ((findDisplay _ctrl) displayCtrl 1500);

{
	_text = name _x;
	_listbox lbAdd _text;
} forEach  allPlayers;

_dynamicText = ((findDisplay _ctrl) displayCtrl 1006);
_dynamicText ctrlSetText correctMedal#1;


_listbox  = ((findDisplay _ctrl) displayCtrl 1502);
{
	_text = _x#1;
	_listbox lbAdd _text;
} forEach  medalList;

