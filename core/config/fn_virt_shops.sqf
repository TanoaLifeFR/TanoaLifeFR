/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché d'Altis",["water","rabbit","tbacon","apple","redgull","pickaxe","fuelF","peach","boltcutter","gpstracker","storagesmall","storagebig"]]};
	case "rebel": {["Marché Rebelle",["water","rabbit","apple","zipties","fence_cut","redgull","tbacon","lockpick","pickaxe","fuelF","peach","gpstracker","boltcutter","blastingcharge"]]};
	case "bri": {["Marché Brigand",["water","rabbit","apple","zipties","fence_cut","redgull","tbacon","lockpick","pickaxe","fuelF","peach","gpstracker","boltcutter","blastingcharge"]]};
	case "gang": {["Marché des Gangs", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Revendeur de Tortue",["turtlesoup","turtle"]]};
	case "coffee": {["Club de Caffe",["coffee","donuts"]]};
	case "heroin": {["Dealer de Drogue",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Revendeur de Petrole",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Revendeur de Poisson",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Revendeur de verre",["glass"]]};
	case "iron": {["Revendeur de minerais",["iron_r","copper_r","argentr","charbonr"]]};
	case "diamond": {["Revendeur de Diamand",["diamond","diamondc"]]};
	case "salt": {["Revendeur de Sel",["salt_r"]]};
	case "cop": {["Marche de la Gendarmerie",["donuts","coffee","spikeStrip","lockpick","mur","sac","cone","barre","lightg","lighty","flecheg","fleched","gpstracker","water","rabbit","apple","redgull","lockpick","fuelF","defusekit"]]};
	case "cement": {["Revendeur de Ciment",["cement"]]};
	case "gold": {["Revendeur d'or",["goldbar"]]};
	case "pharmacie": {["Pharmacie d'Altis",["kitmeth"]]};
	case "meth": {["Dealer de Meth",["crystalmeth","crystalmethpur"]]};
	case "plutonium": {["Revendeur de Plutonium",["plutonium_r"]]};
	case "cigarette": {["Bureau de Tabac",["paquetcigarette"]]}; 
};