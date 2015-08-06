/*
    File: fn_interactFence.sqf
    Author: Robert "Jimbobob"
    
    Description:
    Allows players to cut wire fences.
*/

switch (playerSide) do
{
    case west:
    {
        hint "Vous avez reparé le grillage."; //prints message
        _nObject = nearestObject [player, "Land_CncWall1_F"];
        _nObject setDamage 0; // repairs the fence
    };
    case civilian:
    {
        if(life_inv_fencecutters < 1) exitWith { hint "Vous n'avez pas de pince coupante."; }; // line for not having cutters
        if(life_inv_fencecutters > 1) then //line for having wire cutters
        {
            life_inv_fencecutters = life_inv_fencecutters - 1; //uses the cutters
            hint "Vous avez coupé le grillage !"; //prints message
            _nObject = nearestObject [player, "Land_CncWall1_F"];
            _nObject setDamage 1;; // destroys the fence
        };
    };
    
    case independent:
    {
        hint "Vous n'êtes pas un civil !"; //prints message
    };
};