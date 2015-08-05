/*
	Correction d'une faille majeure
    Par xBowBii et Harmdhast pour AltisDev.com
*/
{
    inGameUISetEventHandler [_x,""];
} forEach ["PrevAction","Action","NextAction"];