// Created by Crowbar 0.71

$modelname "weapons\w_pist_elite.mdl"

$bodygroup "studio"
{
	studio "w_pist_elite.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 2.42 -6.425 0.651

$cdmaterials "models\weapons\w_models\w_pist_elite\"

$attachment "muzzle_flash_l" "ValveBiped.flash_L" 0 0 0 rotate -90 0 0
$attachment "muzzle_flash_r" "ValveBiped.flash_R" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 -5.468 -3.478 12.851 10.026 4.891

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" -4.344314 -0.021911 0.523721 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash_R" "ValveBiped.weapon_bone" -0.226194 3.467417 11.748764 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped" 7.272807 -0.368089 0.841815 -76.338012 4.921962 -96.027419 0 0 0 0 0 0
$definebone "ValveBiped.flash_L" "ValveBiped.Bip01_L_Hand" 11.055341 -3.301219 3.51945 -0.935812 76.387524 91.421317 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_elite_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_elite_physics.smd"
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
