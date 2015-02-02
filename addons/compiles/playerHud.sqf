disableSerialization;
while {true} do
{
    1000 cutRsc ["ZSC_Money_Display","PLAIN"];
    _wpui = uiNameSpace getVariable "ZSC_Money_Display"; // Thx to ASREMIX
_vitals = _wpui displayCtrl 4900;
    Money = player getVariable["cashMoney",0];
    ZombieKills         =         player getVariable["zombieKills",0];
    Hero_Kills         =         player getVariable["humanKills",0];
    Bandit_Kills         =         player getVariable["banditKills",0];
    Humanity          =         player getVariable["humanity",0];
    Blood          =         player getVariable["USEC_BloodQty",12000];
    Fps          =         (round diag_fps);
    Temp                =        player getVariable["dayz_temperatur",36];
    Reset          =         (240-(round(serverTime/60)));
    
    if(Humanity >= 5000) then { Humanity_Icon = "<img size='1' image='addons\gui\HeroHumanity.paa'/>"; };
    if((Humanity >= 200) && (Humanity <= 4999)) then { Humanity_Icon = "<img size='1' image='addons\gui\CivHumanity.paa'/>"; };
    if(Humanity <= 199) then { Humanity_Icon = "<img size='1' image='addons\gui\BanditHumanity.paa'/>"; };
    
    _vitals ctrlSetStructuredText parseText format
["
    <t size='1'> %4 </t><img size='1' align='right' image='addons\gui\Health.paa'/>
    <t size='1'> %2 %3 </t>
    <t size='1'> %1 </t><img size='1' align='right' image='addons\gui\Money.paa'/>
    <t size='1'> %5 </t><img size='1' align='right' image='addons\gui\HeroKills.paa'/>
    <t size='1'> %6 </t><img size='1' align='right' image='addons\gui\BanditKills.paa'/>
    <t size='1'> %7 </t><img size='1' align='right' image='addons\gui\ZombieKills.paa'/>
    <t size='1'> %9 </t><img size='1' align='right' image='addons\gui\Fps.paa'/>
    <t size='1'> %8min </t><img size='1' align='right' image='addons\gui\Uptime.paa'/>
",
    [Money] call BIS_fnc_numberText,
    [Humanity] call BIS_fnc_numberText,
    Humanity_Icon,
    Blood,
    Hero_Kills,
    Bandit_Kills,
    Zombiekills,
    Reset,
    Fps
];
    
_vitals ctrlCommit 0;
sleep 1.5;
};