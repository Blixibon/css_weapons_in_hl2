// Created by Crowbar 0.71

$modelname "weapons\w_rif_m4a1.mdl"

$bodygroup "studio"
{
	studio "w_rif_m4a1.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.965 -11.975 1.683

$cdmaterials "models\weapons\w_models\w_rif_m4a1\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "muzzle_flash_silencer" "ValveBiped.flash_silencer" 0 0 0 rotate -90 0 0
$attachment "L_Hand_Attach" "ValveBiped.L_hand_attach" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -8.773 -1.248 -4.683 32.471 2.928 8.048

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 0.579547 4.389833 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" 0.033044 -4.566531 3.146277 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.L_hand_attach" "ValveBiped.weapon_bone" 2.348599 -3.124231 6.258059 -26.250748 167.839905 20.903333 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" 0.023412 0.047086 23.359142 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash_silencer" "ValveBiped.weapon_bone" 0.023412 0.047086 26.645269 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_m4a1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_m4a1_physics.smd"
{
	$mass 5
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
