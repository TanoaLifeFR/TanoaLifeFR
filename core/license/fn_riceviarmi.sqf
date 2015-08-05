//File name: fn_riceviarmi.sqf
//Author: Michele

if (life_cash < 50000) exitwith {
	hint "Vous n'avez pas 50000$";
	[[],"life_fnc_nosoldi",_this select 0,false] spawn life_fnc_MP;
	};
if (license_civ_gun) exitwith {
	hint "Vous avez deja une licence d'arme a feu !";
	[[],"life_fnc_alredyarmi",_this select 0,false] spawn life_fnc_MP;
	};

life_cash = life_cash -50000;
license_civ_gun = true;
hint "Vous avez acheté une licence d'arme a feu !";
[[],"life_fnc_riceviSoldiArmi",_this select 0,false] spawn life_fnc_MP;