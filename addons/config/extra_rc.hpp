class ExtraRc {
  class ItemRadio {
		class GroupManagement {
			text = "Group Management";
			script = "execVM 'addons\groupManagement\loadGroupManagement.sqf'";
		};
	};
  class ItemToolbox {
		class BuildBike {
			text = "Deploy Bike";
			script = "['MMT_Civ'] execVM 'addons\deploy_bike\EVD_deploy.sqf'";
			};
		class BuildMotorcycle {
			text = "Deploy Motorcycle";
			script = "['TT650_Civ'] execVM 'addons\deploy_bike\EVD_deploy.sqf'";
		};
		class BuildMozzie {
			text = "Deploy Mozzie";
			script = "['CSJ_GyroC'] execVM 'addons\deploy_bike\EVD_deploy.sqf'";
		};
	};
};
 