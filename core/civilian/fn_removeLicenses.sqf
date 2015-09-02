/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_driver = true;
		license_civ_brigand = true;
		license_civ_heroin = true;
		license_civ_marijuana = true;
		license_civ_coke = true;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
		license_civ_brigand = false;
		license_civ_driver = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_air OR license_civ_boat) then {
			license_civ_air = true;
			license_civ_boat = true;
			hint localize "STR_Civ_LicenseRemove_1";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			license_civ_gun = true;
			hint localize "STR_Civ_LicenseRemove_2";
		};
	};

	// Revoking Licenses
    // Drivers License
    case 10:
    {
        license_civ_driver = false;
        hint localize "STR_Civ_RevokeLicense_Driver";
    };
    // Truck License
    case 11:
    {
        license_civ_truck = false;
        hint localize "STR_Civ_RevokeLicense_Truck";
    };
    // Pilot License
    case 12:
    {
        license_civ_air = false;
        hint localize "STR_Civ_RevokeLicense_Pilot";
    };
    // Boating License
    case 13:
    {
        license_civ_boat = false;
        hint localize "STR_Civ_RevokeLicense_Boating";
    };
    // Diving License
    case 14:
    {
        license_civ_dive = false;
        hint localize "STR_Civ_RevokeLicense_Diving";
    };
    // Depanneur License
    case 15:
    {
        licence_civ_depanneur = false;
        hint localize "STR_Civ_RevokeLicense_Depanneur";
    };
    // All Motor Vehicle
    case 16:
    {
        license_civ_driver = false;
        license_civ_truck = false;
        license_civ_air = true;
        license_civ_boat = true;
        license_civ_air = true;
        license_civ_dive = true;
        license_civ_taxi = true;
        hint localize "STR_Civ_RevokeLicense_AllMotor";
    };
    // Firearms License
    case 17:
    {
        license_civ_gun = false;
        hint localize "STR_Civ_RevokeLicense_Firearm";
    };
};