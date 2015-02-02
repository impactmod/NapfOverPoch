/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file adds the ArmA 2 and Arrowhead objetcs in the configuration variables of the logistics system.
 * Fichier ajoutant les objets d'ArmA 2 et Arrowhead dans la configuration du système de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes dérivant de celles utilisées dans les variables de configuration seront aussi valables.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of vehicles which can tow towable objects.
 * This is the list of Vehicles that are ABLE to tow.
 */
R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
	"Ural_CDF",
	"Ural_TK_CIV_EP1",
	"Ural_UN__EP1",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"Kamaz",
	"MTVR_DES_EP1",
	"V3S_Civ",
	"V3S_TK_EP1_DZE",
	"UralCivil_DZE",
	"UralCivil2_DZE",
	"KamazOpen_DZE",
	"MTVR",
	"KamazRefuel_DZ",
	"MtvrRefuel_DES_EP1_DZ",
	"UralRefuel_TK_EP1_DZ",
	"V3S_Refuel_TK_GUE_EP1_DZ",
	"MtvrRefuel_DZ",
	"GAZ_Vodnik_MedEvac",
	"GAZ_Vodnik_DZE"
];

/**
 * List of class names of towables objects.
 * This is the list of vehicles that ARE towable
 */
R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
	"Ikarus",
	"S1209_ambulance_EP1",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_Ambulance",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"LandRover_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_3_open",
	"hilux1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_1_open",
	"hilux1_civil_2_covered",
	"Skoda",
	"SkodaBlue",
	"SkodaGreen",
	"SkodaRed",
	"VolhaLimo_TK_CIV_EP1",
	"Volha_1_TK_CIV_EP1",
	"Volha_2_TK_CIV_EP1",
	"VWGolf",
	"car_hatchback",
	"car_sedan",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Lada1",
	"Lada1_TK_CIV_EP1",
	"Lada2",
	"Lada2_TK_CIV_EP1",
	"LadaLM",
	"SUV_TK_CIV_EP1",
	"SUV_Blue",
	"SUV_Charcoal",
	"SUV_Green",
	"SUV_Orange",
	"SUV_Pink",
	"SUV_Red",
	"SUV_Silver",
	"SUV_White",
	"SUV_Yellow",
	"SUV_Camo",
	"UAZ_CDF",
	"Civcar",
	"Civcarbu",
	"Civcarbl",
	"Civcarre",
	"Civcarge",
	"Civcarwh",
	"Civcarsl",
	"350z",
	"350z_red",
	"350z_kiwi",
	"350z_black",
	"350z_silver",
	"350z_green",
	"350z_blue",
	"350z_gold",
	"350z_white",
	"350z_pink",
	"350z_mod",
	"350z_ruben",
	"350z_v",
	"350z_city",
	"350z_yellow",
	"HMMWV_M998A2_SOV_DES_EP1_DZE",
	"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
	"LandRover_Special_CZ_EP1_DZE",
	"LandRover_MG_TK_EP1_DZE",
	"UAZ_MG_TK_EP1_DZE",
	"ArmoredSUV_PMC_DZE",
	"Pickup_PK_TK_GUE_EP1_DZE",
	"Offroad_DSHKM_Gue_DZE",
	"Pickup_PK_GUE_DZE",
	"Pickup_PK_INS_DZE",
	"Ural_CDF",
	"Ural_TK_CIV_EP1",
	"Ural_UN__EP1",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"Kamaz",
	"MTVR_DES_EP1",
	"V3S_Civ",
	"V3S_TK_EP1_DZE",
	"UralCivil_DZE",
	"UralCivil2_DZE",
	"KamazOpen_DZE",
	"MTVR",
	"KamazRefuel_DZ",
	"MtvrRefuel_DES_EP1_DZ",
	"UralRefuel_TK_EP1_DZ",
	"V3S_Refuel_TK_GUE_EP1_DZ",
	"MtvrRefuel_DZ",
	"GAZ_Vodnik_MedEvac",
	"GAZ_Vodnik_DZE"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 * This is the list of HELICOPTERS that can lift
 */
R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
[
	"CH_47F_EP1_DZE",
	"BAF_Merlin_DZE",
	"CH53_DZE"
];

/**
 * List of class names of liftable objects.
 * This is the list of vehicles that CAN be lifted
 */
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
	"Ikarus",
	"S1209_ambulance_EP1",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_Ambulance",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"LandRover_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_3_open",
	"hilux1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_1_open",
	"hilux1_civil_2_covered",
	"Skoda",
	"SkodaBlue",
	"SkodaGreen",
	"SkodaRed",
	"VolhaLimo_TK_CIV_EP1",
	"Volha_1_TK_CIV_EP1",
	"Volha_2_TK_CIV_EP1",
	"VWGolf",
	"car_hatchback",
	"car_sedan",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Lada1",
	"Lada1_TK_CIV_EP1",
	"Lada2",
	"Lada2_TK_CIV_EP1",
	"LadaLM",
	"SUV_TK_CIV_EP1",
	"SUV_Blue",
	"SUV_Charcoal",
	"SUV_Green",
	"SUV_Orange",
	"SUV_Pink",
	"SUV_Red",
	"SUV_Silver",
	"SUV_White",
	"SUV_Yellow",
	"SUV_Camo",
	"UAZ_CDF",
	"Civcar",
	"Civcarbu",
	"Civcarbl",
	"Civcarre",
	"Civcarge",
	"Civcarwh",
	"Civcarsl",
	"350z",
	"350z_red",
	"350z_kiwi",
	"350z_black",
	"350z_silver",
	"350z_green",
	"350z_blue",
	"350z_gold",
	"350z_white",
	"350z_pink",
	"350z_mod",
	"350z_ruben",
	"350z_v",
	"350z_city",
	"350z_yellow",
	"HMMWV_M998A2_SOV_DES_EP1_DZE",
	"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
	"LandRover_Special_CZ_EP1_DZE",
	"LandRover_MG_TK_EP1_DZE",
	"UAZ_MG_TK_EP1_DZE",
	"ArmoredSUV_PMC_DZE",
	"Pickup_PK_TK_GUE_EP1_DZE",
	"Offroad_DSHKM_Gue_DZE",
	"Pickup_PK_GUE_DZE",
	"Pickup_PK_INS_DZE",
	"Ural_CDF",
	"Ural_TK_CIV_EP1",
	"Ural_UN__EP1",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"Kamaz",
	"MTVR_DES_EP1",
	"V3S_Civ",
	"V3S_TK_EP1_DZE",
	"UralCivil_DZE",
	"UralCivil2_DZE",
	"KamazOpen_DZE",
	"MTVR",
	"KamazRefuel_DZ",
	"MtvrRefuel_DES_EP1_DZ",
	"UralRefuel_TK_EP1_DZ",
	"V3S_Refuel_TK_GUE_EP1_DZ",
	"MtvrRefuel_DZ",
	"GAZ_Vodnik_MedEvac",
	"GAZ_Vodnik_DZE"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USSpecialWeaponsBox "weights" 5 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le référentiel arbitraire utilisé est : une caisse de munition de type USSpecialWeaponsBox "pèse" 5 unités.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorité d'une déclaration de capacité sur une autre correspond à leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient à la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est déclaré avec une capacité de 140 avant "Car". Et que "Car" est déclaré après "Truck" avec une capacité de 40,
 *   Alors toutes les sous-classes appartenant à "Truck" auront une capacité de 140. Et toutes les sous-classes appartenant
 *   à "Car", exceptées celles de "Truck", auront une capacité de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * [Vehicle Name, Capacity],
 * ["Ikarus", 50],
 */
R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[
	
];

/**
 * List of class names of transportable objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * [VEHICLE NAME, COST CAPACITY],
 * ["ATV_Base_EP1", 20],
 */
R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[
	
];


/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player.
 * "MASH",
 */
R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[

];