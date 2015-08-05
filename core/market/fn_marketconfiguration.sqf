/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	///////////////////////// LEGAL ///////////////////////
	
	["oilp", 7000, 4000, 10000, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["argentr",1],
			["charbonr",1]
		]
	],
	
	["iron_r", 1500, 600, 2000, 4, 4,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["argentr",1],
			["charbonr",1]
		] 
	],
	
	["diamondc", 4000, 1750, 5250, 4, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["argentr",1],
			["charbonr",1]
		] 
	],
	
	["copper_r", 1300, 700, 2000, 4, 4,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["argentr",1],
			["charbonr",1]
		] 
	],
	
	["salt_r", 2500, 1200, 3500, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["argentr",1],
			["charbonr",1]
		] 
	],
	
	["glass", 2300, 1150, 3050, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["argentr",1],
			["charbonr",1]
		] 
	],
	
	["charbonr", 2100, 1050, 2850, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["argentr",1]
		] 
	],
	
	["argentr", 2400, 1150, 3000, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["charbonr",1]
		] 
	],
	
	["cement", 1900, 1000, 3000, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["argentr",1],
			["charbonr",1]
		] 
	],
///////////////////////// ILLEGAL /////////////////////////

	["marijuana", 5500, 2750, 8250, 4, 4,
		[ 
			["cocainep",1],
			["heroinp",1],
			["plutoniumr",1],
			["crystalmethpur",1],
			["paquetcigarette",1]
		] 
	],
	
	["cocainep", 8000, 5000, 9000, 4, 4,   
		[ 
			["marijuana",1], 
			["heroinp",1],
			["plutoniumr",1],
			["crystalmethpur",1],
			["paquetcigarette",1]
		] 
	],
	
	["plutonium_r", 10000, 5000, 14000, 4, 4,
		[ 
			["marijuana",1], 
			["heroinp",1],
			["cocainep",1],
			["crystalmethpur",1],
			["paquetcigarette",1]
		] 
	],
	
	["crystalmethpur", 13000, 9000, 17000, 4, 4,   
		[ 
			["marijuana",1], 
			["plutoniumr",1],
			["heroinp",1],
			["cocainep",1],
			["paquetcigarette",1]
		] 
	],
	
	["paquetcigarette", 6000, 4000, 9000, 4, 4,
		[ 
			["marijuana",1], 
			["plutoniumr",1],
			["heroinp",1],
			["cocainep",1],
			["crystalmethpur",1]
		] 
	],
	
	["heroinp", 6300, 2900, 7800, 4, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["plutoniumr",1],
			["crystalmethpur",1],
			["paquetcigarette",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};