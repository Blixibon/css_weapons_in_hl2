# Counter-Strike: Source Weapons in Half-Life 2
***By Blixibon***

---

This repository contains Counter-Strike: Source's weapons ported to Source SDK 2013/Half-Life 2 and modified to use Half-Life 2's HUD, technical conventions, and game rules.

This **DOES NOT** use content from leaks. All code was recreated from scratch in Source SDK 2013 using Half-Life 2 content. Most assets are ported directly from Counter-Strike: Source. Some assets are modified and included in this repository.

Note that this README will also refer to the source code for this feature, which is located [on a branch of my Source SDK 2013 fork](https://github.com/Blixibon/source-sdk-2013/tree/misc/css-weapons-in-hl2). See the "Code" section for more information.

__**This is a work-in-progress and not yet finished.**__

---

While these weapons still retain most of the same assets and individual functionality as they did in CS:S, __they are not designed to be direct ports__. They draw from HL2 weapon code and are designed to fit into the game's universe and environment, allowing them to be used side-by-side with Half-Life 2 weapons in standard HL2 gameplay.

Here's a small list of some notable changes:

* These weapons use static or semi-variable spreads instead of Counter-Strike's inaccuracy or recoil mechanics.
* Most weapons' ammo types have been adapted to HL2's, although a few new ammo types have also been added which use values in-line with Half-Life 2's other ammo types.
	* For example, the Five-SeveN and P90 use 9mm instead of 5.7×28mm and the Deagle uses .357 Magnum ammo instead of .50AE. The latter is partially inspired by HL: Opposing Force's Deagle.
	* Some weapons still have variable damage inconsistent with their ammo types. (e.g. Dual Berettas are more powerful and Silenced USPs are weaker)
* All weapon classnames have "_css" in the middle of them. (e.g. `weapon_css_glock`)

---

### Done:

* Code and scripting for Pistols and SMGs
* Viewmodel tweaks for Pistols and SMGs
* Ammo types and damage tuning for Pistols and SMGs
* Basic "HEV suit" hand retexture
* Adjustments for base HL2 weapons

### Todo:

* Code and scripting for Rifles, Sniper Rifles, Shotguns, and Knife
* Viewmodel tweaks for Rifles, Sniper Rifles, Shotguns, and Knife
* Spread adjustments for each weapon
* HL2-compatible worldmodels *(i.e. bonemerging with `ValveBiped.Bip01_R_Hand`, having an attack sequence appropriate to a NPC activity, and dispatching the muzzle flash event)*
* Ammo box items for the new ammo types
	* Possible custom ammo crates for them as well?
* Actual HEV suit arms on the CS:S viewmodel rig instead of retexturing the CS:S arms *(would share the original HL2 hand sheet)*

---

## Required Assets

This requires the following stock Counter-Strike: Source assets which are not included in this repository:

* `materials/models/weapons/w_models` - Materials and textures used by the CS:S weapon worldmodels. *(entire folder)*
* `materials/models/weapons/v_models` - Materials and textures used by the CS:S weapon viewmodels. *(entire folder)*
* `sound/weapons` - Sounds used by the CS:S weapons. *(entire folder)*
* `resource/cstrike.ttf` - The font containing the CS:S weapon icons.

---

## Code

The code for this feature is located [on a branch of my Source SDK 2013 fork](https://github.com/Blixibon/source-sdk-2013/tree/misc/css-weapons-in-hl2). You can merge this into your own mod using Git.

Note that this code utilizes features from Mapbase, but those features have been bundled with this branch so that it could work in any Source SDK 2013 fork. In the event of a merge conflict, Mapbase's code should take precedence.

The MP branch is not yet supported.

---

## Credits

* Crowbar 0.71 - Crowbar was used to initially decompile all of the models involved.
* Counter-Strike: Source - All decompiled models, the original hand texture sheet, and a few of the scripts originate from Counter-Strike: Source.
* Blixibon - Everything else, including porting the weapons themselves and modifying them to work in a Source SDK 2013/Half-Life 2 environment.

---

## What could this be used for?

Since these weapons are designed to be used side-by-side with HL2 weapons, they can be used to expand the arsenal of players and/or NPCs in Half-Life 2 mods which involve HL2's universe and/or gameplay.

For example, a Half-Life 2 mod may want to tap into elements from before the Seven Hour War and allow players and/or NPCs to use weapons predating the Combine occupation. Counter-Strike: Source's weapons provide a convenient selection of pre-war weapons which can be used in these contexts, especially since all of them could realistically exist within Half-Life 2's universe.

## Can I use this in my own project?

**YES!** Please feel free to use these files and the code in any way you'd like. These are intended to be free assets and source code anyone can use or modify, requiring nothing more than credit to this project.

## Why did you make this?

This started when I thought about an AK-47 being used in an otherwise completely ordinary retail Half-Life 2 mod. Maybe it could be used by rebel NPCs, or maybe the player could swap it for the SMG or AR2 (despite the AK-47 not having a secondary attack). It wouldn't have anything special, but I mainly thought about this in relation to how it would realistically "fit" into Half-Life 2's post-Soviet setting as a weapon someone might find locally. I thought about porting CS:S's AK-47 to Half-Life 2, and that led me to the idea of porting every CS:S weapon.
