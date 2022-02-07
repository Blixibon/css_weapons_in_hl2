# Counter-Strike: Source Weapons in Half-Life 2

---

This repository contains Counter-Strike: Source's weapons ported to Source SDK 2013/Half-Life 2 and modified to use Half-Life 2's HUD, technical conventions, and game rules.

This **DOES NOT** use content from leaks. All code was recreated from scratch in Source SDK 2013 using Half-Life 2 content. Most assets are ported directly from Counter-Strike: Source. Some assets are modified or custom and included in this repository.

Note that this README will also refer to the source code for this feature, which is located [on a branch of my Source SDK 2013 fork](https://github.com/Blixibon/source-sdk-2013/tree/misc/css-weapons-in-hl2). See the "Code" section for more information.

__**This is a work-in-progress and not yet finished.**__

---

While these weapons still retain most of the same assets and individual functionality as they did in CS:S, __they are not direct ports__. They are integrated into Half-Life 2's arsenal and abide by the game's stats and mechanics. This allows them to be used in standard HL2 gameplay side-by-side with HL2's default weapons.

Here's a small list of some notable changes these weapons have from their original CS:S counterparts:

* These weapons use static or semi-variable spreads instead of Counter-Strike's inaccuracy or recoil mechanics.
* Most weapons' cartridges have been adapted to HL2's ammo types, although a few new CS:S-inspired ammo types have also been added which use values in-line with Half-Life 2's other ammo types.
	* **Adaptation examples:**
		* The Five-SeveN and P90 use 9mm instead of 5.7×28mm.
		* The Deagle uses .357 Magnum ammo instead of .50AE. *(This is partially inspired by Half-Life: Opposing Force.)*
	* **Ammo type port examples:**
		* The main rifle cartridge, 5.56 NATO, is replicated in HL2 and uses a player damage output in between the HL2 Pistol and the HL2 AR2.
		* The P228 cartridge, .357 SIG, is replicated in HL2 and deals half the damage output of HL2's .357 Magnum.
	* Some weapons still have variable damage different from their ammo types to try to mimic CS:S. (e.g. Dual Berettas are more powerful and Silenced USPs are weaker)
* All weapon classnames have "_css" in the middle of them. (e.g. `weapon_css_glock`)
* Worldmodels bonemerge with their owners by using `ValveBiped.Bip01_R_Hand` instead of `ValveBiped.weapon_bone`, allowing them to be used on HL2 NPCs (and HL2-based playermodels)

---

### Done:

* Code and scripting for Pistols, Shotguns, SMGs, Rifles, Sniper Rifles, and M249
* Viewmodel tweaks for Pistols, Shotguns, SMGs, Rifles, Sniper Rifles, and M249
* HL2-compatible worldmodels for Pistols, Shotguns, SMGs, Rifles, Sniper Rifles, and M249
* Unique NPC reload and shoot sounds for Pistols, Shotguns, SMGs, Rifles, Sniper Rifles, and M249
* Ammo types and damage tuning for Pistols, SMGs, and Rifles
* Spread and viewpunch adjustments for each weapon
* Basic "HEV suit" hand retexture
* Adjustments for base HL2 weapons
* Ammo box items for .556 NATO and .762 NATO
* FGD for all new weapon and item entities

### Todo:

* Ammo box items for .45 ACP and .357 SIG
	* Possible custom ammo crates as well?
* Demo map demonstrating each CS:S weapon and their usage on NPCs

#### Things which would be nice but are not currently planned:

* Actual HEV suit arms on the CS:S viewmodel rig instead of retexturing the CS:S arms *(would share the original HL2 hand sheet)*
	* Putting the CS:S viewmodels on `ValveBiped.Bip01` would be more preferable since it would allow any standard arm models to be used, but that would require reanimating all of them
* Scope overlays for sniper rifles
* Knife and Grenades
* Dual Berettas for NPCs

---

## Code

The code for this feature is located [on a branch of my Source SDK 2013 fork](https://github.com/Blixibon/source-sdk-2013/tree/misc/css-weapons-in-hl2). You can merge this into your own mod using Git.

Note that this code utilizes features from Mapbase, but those features have been bundled with this branch so that it could work in any Source SDK 2013 fork. In the event of a merge conflict, Mapbase's code should take precedence.

These weapons have been designed to be portable to MP (i.e. they are fully predicted), but this has not yet been tested.

---

## Setup Instructions

This section will explain how to set up these weapons for a Source SDK 2013 mod.

### Required Assets

This requires the following stock Counter-Strike: Source assets which are not included in this repository:

* `materials/models/weapons/w_models` - Materials and textures used by the CS:S weapon worldmodels. *(entire folder)*
* `materials/models/weapons/v_models` - Materials and textures used by the CS:S weapon viewmodels. *(entire folder)*
* `sound/weapons` - Sounds used by the CS:S weapons. *(entire folder)*
* `resource/cs.ttf` - The font containing most of the CS:S weapon icons.
* `resource/cstrike.ttf` - The font containing some of the other CS:S weapon icons.

---

### Step 1: Merge the code

The code component of this branch (see above) has shared history with Source 2013's GitHub repo. If your mod's code is using Git and derives from this repo as well, you can merge it into your own mod without any hassle.

If you are not using Git, please learn how to use it and come back to this step later.

### Step 2: Download the release

Go to "Releases" and download the latest release. This includes the compiled models, some materials, and the NPC sounds.

Put these assets into your mod alongside the aforementioned CS:S assets.

### Step 3: Download the repository

#### Step 3.1: Add the scripts

Copy and paste all scripts in the `scripts` folder into your mod's own `scripts` folder. Modify `game_sounds_manifest.txt` to include `game_sounds_weapons_css.txt` as well.

#### Step 3.2: Add the resources

Your mod should have two files in its `resource` folder: `ClientScheme.res` and `%modname%_english.txt`. If you do not have `ClientScheme.res`, copy and paste it from HL2's or EP2's resources into your own mod's files.

Now, in the `resourcesrc` folder of this repository, there are two files: `ClientScheme.res` and `localization_english.txt`. This repository's `ClientScheme.res` contains fonts you should put into your mod's own `ClientScheme.res`. The `localization_english.txt` contains weapon labels you should put into your mod's own `%modname%_english.txt`.

### Step 4: Add the FGD

This repository has a `bin` folder with a FGD you can use in Hammer to spawn CS:S weapons and ammo items. Use it via either the `@include` command in your FGD or mount it in your Hammer config.

### Conclusion

That should be everything.

---

## Credits

* Crowbar 0.71 - Crowbar was used to initially decompile all of the models involved.
* Counter-Strike: Source - All decompiled models, the original hand texture sheet, and a few of the scripts originate from Counter-Strike: Source.
* Blender and Blender Source Tools - Used to adjust the bones on the CS:S worldmodels to target HL2 skeletons.
* Blixibon - Everything else, including porting the weapons themselves and modifying them to work in a Source SDK 2013/Half-Life 2 environment.

---

## What could this be used for?

Since these weapons are fully integrated into Half-Life 2's game rules and weapon code, they can be used to expand the arsenal of players and/or NPCs in Half-Life 2 mods which involve HL2's universe and/or gameplay.

For example, a Half-Life 2 mod may want to tap into elements from before the Seven Hour War and allow players and/or NPCs to use weapons predating the Combine occupation. Counter-Strike: Source's weapons provide a convenient selection of pre-war weapons which can be used in these contexts, especially since all of them could realistically exist within Half-Life 2's universe.

## Can I use this in my own project?

**YES!** Please feel free to use these files and the code in any way you'd like. These are intended to be free assets and source code anyone can use or modify, requiring nothing more than credit to this project.

## Why did you make this?

This started when I thought about an AK-47 being used in an otherwise completely ordinary retail Half-Life 2 mod. Maybe it could be used by rebel NPCs, or maybe the player could swap it for the SMG or AR2 (despite the AK-47 not having a secondary attack). It wouldn't have anything special, but I mainly thought about it in relation to how it would realistically "fit" into Half-Life 2's post-Soviet setting as a weapon someone might find locally. I thought about porting CS:S's AK-47 to Half-Life 2, and the mechanical similarities with other weapons led me to the idea of porting every other CS:S weapon as well.
