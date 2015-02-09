//Enable full moon nights by setting this to true. (Default: false)
dayz_fullMoonNights = true;
//Controls the max overall vehicle limit if this limit is reached no new vehicles will spawn.
MaxVehicleLimit = 200;
//Experimental feature that will parachute spawn all players into the game. (Default: false)
dayz_paraSpawn = false;
//Controls animal spawn limits (Default: 8)
dayz_maxAnimals = 16;
//Enables the ability to tame dogs with raw meat. (Default: false)
dayz_tameDogs = true;
//Sets the lowest possible damage a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleDamageLow = 0;
//Sets the highest possible damage a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleDamageHigh = 100;
//To change how many debris spawn edit the MaxDynamicDebris variable in the missions init.sqf.
MaxDynamicDebris = 100; // Max number of road debris spawns (Default: 100)
//Customize fresh spawn loadout
DefaultMagazines = ["ItemBandage","ItemBandage","FoodCanBakedBeans","ItemSodaCoke"];  
DefaultWeapons = ["ItemFlashlight","ItemMap","ItemMachete","ItemRadio"];  
DefaultBackpack = "DZ_Patrol_Pack_EP1";  
DefaultBackpackWeapon = ""; 
//Controls the distance that you can sell a vehicle to the traders.
dayz_sellDistance = 20;
dayz_sellDistance_vehicle = 15;
dayz_sellDistance_boat = 40;
dayz_sellDistance_air = 50;
//If True will allow building on roads
DZE_noRotate = ["ItemVault"]; //Objects that cannot be rotated. Ex: DZE_noRotate = ["ItemVault"] (NOTE: The objects magazine classname)
DZE_vectorDegrees = [0.01, 0.1, 1, 5, 15, 45, 90];
DZE_curDegree = 45; //Starting rotation angle. //Prefered any value in array above
DZE_dirWithDegrees = false; //When rotating objects with Q&E, use the custom degrees
DZE_BuildOnRoads = false;
// Custom Mission Loot Table (Default: false)
DZE_MissionLootTable = true;
//Enables Helicopter Lifting
DZE_HeliLift = false;
//Enables Trader config (.sqf file)
DZE_ConfigTrader = true;
//Change the number of constructed objects within range of a 30m Plot Pole. (default=150). Be very carefull with this number, as setting it too high will cause a huge amount of local lag**
DZE_BuildingLimit = 500; 
//Non destructable bases
DZE_GodModeBase = true;
//Enable Self BB
DZE_SelfTransfuse = true;
DZE_selfTransfuse_Values = [6000, 20, 90]; // [blood, Infiction change 1 out of 20, Time before new BB]
//Turn on A plot for Life (check ownership against SteamID).
DZE_APlotforLife = true;