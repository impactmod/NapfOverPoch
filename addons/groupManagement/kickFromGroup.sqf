disableSerialization;

private ["_dialog","_callerID","_targetID","_friendlies","_rfriendlies","_pTarget","_index","_playerData","_check"];

_dialog = findDisplay 55510;
_groupListBox = _dialog displayCtrl 55512;
_index = lbCurSel _groupListBox;
_playerData = _groupListBox lbData _index;
_check = 0;
{
	if ((!isNull _x) && {isPlayer _x} && {str(_x) == _playerData}) exitWith {_pTarget = _x;_check = 1;};
} count playableUnits;

if (_pTarget == player) exitWith {systemChat "You can not kick yourself";};
if (_check == 0) exitWith {systemChat "You must select someone to kick first";};
[_pTarget] join grpNull;

_callerID = getPlayerUID player;
_targetID = getPlayerUID _pTarget;

_friendlies = player getVariable ["friendlies", []];
_friendlies =  _friendlies - [_targetID];
player setVariable ["friendlies", _friendlies, true];

_rfriendlies = _pTarget getVariable ["friendlies", []];
_rfriendlies =  _rfriendlies - [_callerID];
_pTarget setVariable ["friendlies", _rfriendlies, true];

systemChat format["You have kicked %1 from the group",name _pTarget];
systemChat format["%1 has been removed from your friendly list",name _pTarget];