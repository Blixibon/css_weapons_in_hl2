// Created by Crowbar 0.71

$modelname "weapons\w_shot_m3super90.mdl"

$bodygroup "studio"
{
	studio "w_shot_m3super90.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.097 -8.559 1.694

$cdmaterials "models\weapons\w_models\w_shot_m3super90\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -10.897 -1.553 -3.312 28.017 1.367 6.699

$pushd "w_shot_m3super90_anims"

$include "..\w_generic_seq_shotgun.qci"

$popd

$collisionmodel "w_shot_m3super90_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	prop_data 
	{
		"base"		"Metal.Medium"
	}
}
