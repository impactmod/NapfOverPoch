private ["_callerID","_friendlies","_rfriendlies","_targetID"];

_callerID = getPlayerUID player;
{
	if ((!isNull _x) && {isPlayer _x} && {alive _x}) then {
		_targetID = getPlayerUID _x;
		
		_friendlies = player getVariable ["friendlies", []];
		_friendlies =  _friendlies - [_targetID];
		player setVariable ["friendlies", _friendlies, true];
		
		_rfriendlies = _x getVariable ["friendlies", []];
		_rfriendlies =  _rfriendlies - [_callerID];
		_x setVariable ["friendlies", _rfriendlies, true];
	};
} count units group player;

[player] join grpNull;
systemChat "You have left the group";
systemChat "All members have been removed from your friendly list";