/*
File: fn_cellphone2.sqf
Author: Timo

Description:
With no radio cant use Cellphone
*/


if("ItemRadio" in assignedItems player) then {
createDialog "Life_my_smartphone"; // or /** Life_my_smartphone **\ if you use the SQL Based Smartphone By Silex ( http://www.altisliferpg.com/topic/4522-howto-sql-based-smartphone/ )
}else{
hint parseText format ["Pas de Telephone // 


Vous n'avez pas de telephone sur vous, achetez en un au magasin de telephone.
"];
};