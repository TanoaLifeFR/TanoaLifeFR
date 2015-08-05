/*
    Uniform Script
    Author: Eldayia
    Created for http://altisdev.com
*/

    #define __GETC__(var) (call var)
    
	if (playerSide == west) then {
        if ((uniform player) == "U_B_CombatUniform_mcam")  then {
            player setObjectTextureGlobal [0, "textures\Gendarme\gendarme_bleu.paa"]; //Tenue Polaire Bleu
		};
    };
	
	if (playerSide == west) then {
        if ((uniform player) == "U_B_CombatUniform_mcam_vest")  then {
            player setObjectTextureGlobal [0, "textures\Gendarme\gendarme_noir.paa"]; //Tenue Polaire Noir
		};
    };
	
	if (playerSide == west) then {
        if ((uniform player) == "U_B_CTRG_1")  then {
            player setObjectTextureGlobal [0, "textures\Gendarme\gign.jpg"]; //Tenue GIGN Noir
		};
    };
	
	if (playerSide == west) then {
        if ((uniform player) == "U_Rangemaster")  then {
            player setObjectTextureGlobal [0, "textures\Gendarme\range_gendarme.jpg"]; //Tenue Rangemaster Gendarmerie
		};
    };
	
	if (playerSide == west) then {
        if ((uniform player) == "U_C_Commoner1_3")  then {
            player setObjectTextureGlobal [0, "textures\Gendarme\Gendarmerie_Bac.jpg"]; //Tenue Rangemaster Gendarmerie
		};
    };
	
	if (playerSide == east) then {
        if ((uniform player) == "U_B_SpecopsUniform_sgg")  then {
            player setObjectTextureGlobal [0, "textures\Mercenaire\trellis_merc.jpg"]; //Tenue Altis Protection
		};
    };
	
	if (playerSide == independent) then {
        if ((uniform player) == "U_Rangemaster")  then {
            player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; //Tenue Rangemaster Medic
		};
    };
	
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Poloshirt_blue")  then {
            player setObjectTextureGlobal [0, "textures\Civil\BananaCreed.jpg"]; //Tenue Polo Blue Banana Crew
		};
    };
	
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Poloshirt_burgundy")  then {
            player setObjectTextureGlobal [0, "textures\Civil\BananaWar.jpg"]; //Tenue Polo Burgundy BW
		};
	};
	
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Poloshirt_redwhite")  then {
            player setObjectTextureGlobal [0, "textures\Civil\BB_Danger.jpg"]; //Tenue Polo Rouge/Blanc BB
		};
	
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Poloshirt_salmon")  then {
            player setObjectTextureGlobal [0, "textures\Civil\BewarOfBiters.jpg"]; //Tenue Polo Saumon BOB
		};
	
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Poloshirt_stripped")  then {
            player setObjectTextureGlobal [0, "textures\Civil\fut1.jpg"]; //Tenue Polo Lignes FUT1
		};
		
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Poloshirt_tricolour")  then {
            player setObjectTextureGlobal [0, "textures\Civil\FUT2.jpg"]; //Tenue Polo Multicolor FUT2
		};
		
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Commoner1_1")  then {
            player setObjectTextureGlobal [0, "textures\Civil\NightWatch.jpg"]; //Tenue Polo Pauvre Bierre
		};
		
	if (playerSide == civilian) then {
        if ((uniform player) == "U_C_Commoner1_2")  then {
            player setObjectTextureGlobal [0, "textures\Civil\PERS.jpg"]; //Tenue Polo Pauvre Regarde
		};