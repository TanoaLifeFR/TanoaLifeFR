[] spawn {
	while {true} do
	{
		enableSentences false;
		sleep 20;
	};
};
[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
    private["_bp","_load","_cfg"];
    while{true} do
    {
        waitUntil {backpack player != ""};
        _bp = backpack player;
        _cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
        _load = round(_cfg / 4);
        life_maxWeight = life_maxWeightT + _load;		
		
		if(playerSide == independent) then 
		{
		waitUntil {backpack player == "B_Carryall_khk"};
		(backpackContainer player) setObjectTextureGlobal [0,"textures\Securite\backpack_securite.paa"];
		waitUntil {backpack player == "B_Carryall_khk"};
		};
		
		if(playerSide == west) then 
		{
		waitUntil {backpack player == "B_Bergen_sgg"};
		(backpackContainer player) setObjectTextureGlobal [0,"textures\Gendarme\backpack_gendarmerie.jpg"];
		waitUntil {backpack player == "B_Bergen_sgg"};
		};
		
		if(playerSide == west) then 
		{
		waitUntil {backpack player == "B_Bergen_blk"};
		(backpackContainer player) setObjectTextureGlobal [0,"textures\Gendarme\backpack_gign.jpg"];
		waitUntil {backpack player == "B_Bergen_blk"};
		};
		
		if(playerSide == west) then 
		{
		waitUntil {backpack player == "B_Bergen_mcamo"};
		(backpackContainer player) setObjectTextureGlobal [0,"textures\Gendarme\backpack_gendarmerie_bleu.jpg"];
		waitUntil {backpack player == "B_Bergen_mcamo"};
		};
		
        waitUntil {backpack player != _bp};
        if(backpack player == "") then
        {
            life_maxWeight = life_maxWeightT;
        };
    };
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

_illegalmarkers = ["chop_shop_1","Dealer_1","Dealer_1_4","weed_1","weed_area","Weed_p_1","Rebelop","Rebelop_2_1","Rebelop_2","regloefk","Rebelop_2_2_2","Rebelop_2_2","Rebelop_2_2_1","cocaine_1","cocaine_area","Rebelop_1","heroin_1","heroin_area","heroin_p","chop_shop_3","turle_dealer","chop_shop_4","gang_area_1","gang_area_2","gang_area_3","turle_dealer_1","turle_dealer_2","Rebelop","Rebelop_2","chateaur","fonte_plutonium","plutonium_1","vendeur_plutonium","chop_shop_2","cocaine processing","Pharmacie","Traitement de la Meth 50%","tabac_1","tabac_2","tabac_3","tabac_4","traitement_tabac","bureau_tabac","Traitement de la Meth 75%","Traitement de la Meth 99%","Dealer de Meth","Dealer_1_3"];

if (playerSide == west) then {

{ deleteMarkerLocal _x; } forEach _illegalmarkers;

};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};