// Created by Crowbar 0.71

$modelname "weapons\w_mach_m249para.mdl"

$bodygroup "studio"
{
	studio "w_mach_m249.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.849 -10.166 2.943

$cdmaterials "models\weapons\w_models\w_mach_m249\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -8.487 -2.935 -3.858 28.805 4.688 9.744

$pushd "w_mach_m249para_anims"

$include "..\w_generic_seq_rifle.qci"

$popd

$collisionmodel "w_mach_m249para_physics.smd"
{
	$mass 15
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	prop_data 
	{
		"base"		"Metal.Small"
	}
}
