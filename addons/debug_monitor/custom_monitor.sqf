fnc_debug = {
    debugMonitor = true;
    while {debugMonitor} do
    {
		Money = 		player getVariable["cashMoney",0];
		ZombieKills =   player getVariable["zombieKills",0];
        Humanity =      player getVariable["humanity",0];
		Hero_Kills =    player getVariable["humanKills",0];
		Bandit_Kills =  player getVariable["banditKills",0];
		Fps =         	(round diag_fps);
		Reset =         (240-(round(serverTime/60)));
		
		if(Humanity >= 5000) then { Humanity_Icon = "<img size='1.5' image='addons\gui\HeroHumanity.paa'/>"; };
		if((Humanity >= 200) && (Humanity <= 4999)) then { Humanity_Icon = "<img size='1.5' image='addons\gui\CivHumanity.paa'/>"; };
		if(Humanity <= 199) then { Humanity_Icon = "<img size='1.5' image='addons\gui\BanditHumanity.paa'/>"; };
		
        hintSilent parseText format ["	
		<t size='1' font='Bitstream' align='center' color='#AF0000'>DayZ Impact</t><br/><br/>		
		<img size='1.5' align='left' image='addons\gui\Health.paa'/>											<t size='1' align='right'>%3</t><br/>
		<t size='1.5'   align='left'>%4</t>		 																<t size='1' align='right'>%5</t><br/>
		<img size='1.5' align='left' image='addons\gui\Money.paa'/>												<t size='1'	align='right'>%6</t><br/><br/>
		<t size='1' font='Bitstream' align='left' color='#FFBF00' >Restart:</t> 								<t size='1' font='Bitstream' align='right' >%11 min</t><br/>
		<t size='1' font='Bitstream' align='left' color='#FFBF00' >FPS:</t> 									<t size='1' font='Bitstream' align='right' >%10</t><br/><br/>
		<t size='1' font='Bitstream' align='center' color='#AF0000' >TEAMSPEAK</t><br/>
		<t size='1' font='Bitstream' align='center' >188.165.250.22</t>",
		
		dayz_playerName,
		(dayz_Survived),
		r_player_blood,
		Humanity_Icon,
		[Humanity] call BIS_fnc_numberText,
		[Money] call BIS_fnc_numberText,
		Zombiekills,
		Hero_Kills,
		Bandit_Kills,
		Fps,
		Reset
		]; 
    sleep 1;
    };
};
 
[] spawn fnc_debug;