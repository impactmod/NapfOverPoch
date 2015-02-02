waitUntil {uiSleep .25;(!isNil "PVDZE_plr_LoginRecord")};
if (count units group player > 1) then {[player] join grpNull;};
{
	if ((!isNull _x) && {(_x getVariable["bodyUID","0"]) == (getPlayerUID player)}) then {
		_bodyGroup = _x getVariable["bodyGroup",grpNull];
		if (({alive _x} count units _bodyGroup) > 0) then {[player] join _bodyGroup;};
	};
} count allDead;
//#include "\ca\editor\Data\Scripts\dikCodes.h"
//keyboard_keys set [DIK_LWIN,{if (tagname) then {tagname = false;titleText ["\n\nName tags OFF","PLAIN DOWN"];titleFadeOut 4;} else {tagname = true;titleText ["\n\nName tags ON","PLAIN DOWN"];titleFadeOut 4;};_handled = true;}];
//keyboard_keys set [(actionKeys "TacticalView") select 0,{_handled = true;}];
//keyboard_keys set [DIK_RWIN,{if (dialog) then {closeDialog 0;groupManagementActive = false;} else {execVM "addons\groupManagement\loadGroupManagement.sqf";};_handled = true;}];

acceptGroupInvite = compile preprocessFileLineNumbers "addons\groupManagement\acceptGroupInvite.sqf";
declineGroupInvite = compile preprocessFileLineNumbers "addons\groupManagement\declineGroupInvite.sqf";
disbandGroup = compile preprocessFileLineNumbers "addons\groupManagement\disbandGroup.sqf";
inviteToGroup = compile preprocessFileLineNumbers "addons\groupManagement\inviteToGroup.sqf";
kickFromGroup = compile preprocessFileLineNumbers "addons\groupManagement\kickFromGroup.sqf";
leaveGroup = compile preprocessFileLineNumbers "addons\groupManagement\leaveGroup.sqf";
mapLoop = compile preprocessFileLineNumbers "addons\groupManagement\mapLoop.sqf";
playerSelectChange = compile preprocessFileLineNumbers "addons\groupManagement\playerSelectChange.sqf";
updatePlayerList = compile preprocessFileLineNumbers "addons\groupManagement\updatePlayerList.sqf";
tagName = true;
	
if (isNil "dzgmInit") then {call compile preprocessFileLineNumbers "addons\groupManagement\icons.sqf";};
uiSleep 1;
[] spawn dzgmInit;
[] spawn mapLoop;
systemChat "Right click on radio to open group management";