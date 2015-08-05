/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Vole l'argent de la personne",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		// Suicide Bomb
		life_actions = life_actions + [player addAction["Active la veste explosive",life_fnc_suicideBomb,"",0,false,false,"",
		'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
	};

	case west:
	{
		//Entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Monter en Conducteur</t>",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Monter en Passager</t>",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']]; 
		life_actions = life_actions + [player addAction["<t color='#1E7FCB'>Descendre</t>",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
        life_actions = life_actions + [player addAction["<t color='#26C4EC'>Monter en Tireur</t>",life_fnc_copEnter,"gunner",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//Saisir les objets au sol
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Saisir le(s) objet(s) au sol</t>",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']];
		//Insigne de police
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Insigne de police</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
		// PackUp AllinOne
		life_actions = life_actions + [player addAction["<t color='#FFFF33'>Enlever objet</t>",life_fnc_packupitem,"",0,false,false,"",' _objet = nearestObjects[getPos player,["Land_Razorwire_F","RoadBarrier_F","Land_BagFence_Short_F","Land_CncBarrier_stripes_F","RoadCone_F","Land_Flush_Light_red_F","Land_Flush_Light_green_F","Land_Flush_Light_yellow_F","ArrowDesk_L_F","ArrowDesk_R_F"],8] select 0; !isNil "_objet" && !isNil {(_objet getVariable "item")}']];
		//Donne une licence d'arme
		life_actions = life_actions + [player addAction["<t color=""#4DB0E2"">" +"Donné la licence d'arme a feu",life_fnc_daiarmi,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 4 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian)']];


		
		//Allumer les girophares + sirenes
		life_actions = [player addAction["<t color='#FFFF33'>CODE 2</t>",{
			_veh = vehicle player;
			_veh call life_fnc_sirenLights;
			titleText [localize "STR_MISC_SirensON","PLAIN"];
			_veh setVariable["siren",true,true];
			[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
		},"",0,false,false,"",' vehicle player != player && ((typeOf vehicle player) in ["I_Quadbike_01_F","C_Offroad_01_F","C_SUV_01_F","B_MRAP_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_F"]) && ((driver vehicle player) == player) && !isNil {vehicle player getVariable "lights"} && !(vehicle player getVariable ["lights", false]) ']];
 
		//Allumer les girophares
		life_actions = life_actions + [player addAction["<t color='#ED7F10'>CODE 1</t>",{
			[vehicle player] call life_fnc_sirenLights;
		},"",0,false,false,"",' vehicle player != player && ((typeOf vehicle player) in ["I_Quadbike_01_F","C_Offroad_01_F","C_SUV_01_F","B_MRAP_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_F"]) && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable ["lights", false]) ']];
		
		//Allumer la sirene après les girophares
		life_actions = life_actions + [player addAction["<t color='#FF0000'>CODE 2</t>",{
			_veh = vehicle player;
			titleText [localize "STR_MISC_SirensON","PLAIN"];
			_veh setVariable["siren",true,true];
			[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
		},"",0,false,false,"",' vehicle player != player && ((typeOf vehicle player) in ["I_Quadbike_01_F","C_Offroad_01_F","C_SUV_01_F","B_MRAP_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_F"]) && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable ["lights", true]) && !(vehicle player getVariable ["siren", true]) ']];
		
		//Eteindre tout
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Eteindre tout</t>",{
			_veh = vehicle player;
			_veh setVariable["lights",false,true];
			_veh setVariable["siren",false,true];
		},"",0,false,false,"",' vehicle player != player && ((typeOf vehicle player) in ["I_Quadbike_01_F","C_Offroad_01_F","C_SUV_01_F","B_MRAP_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_F"]) && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable ["lights", false]) ']];
	};
};