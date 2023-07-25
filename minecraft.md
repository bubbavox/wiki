# minecraft notes & hows-to

## Info / Links:
*updated 2023-07-18*
- AMIDST map explorer - [github](https://github.com/toolbox4minecraft/amidst#amidst) / [forum](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/minecraft-tools/2970854-amidst-map-explorer-for-minecraft-1-14-and-later)


## Current setup:
*updated 2023-07-23*
### Mods:
  - [MultiMC] - Game launcher with extra features, such as the ability to manage multiple instances of the game.
  - [Fabric] - Core tech for using mods.  This includes the Fabric Loader and the Fabric API. 
  - [Sodium] - Improves rendering performance.  May also require Indium for some mods to work.
  - [Indium] - Addon for Sodium, providing support for the Fabric Rendering API.
  - [Iris] - For loading shader mods (an alternative to OptiFine).  Requires Sodium.
  - [ModMenu] - Adds an in-game GUI for configuring mods.
  - [BetterF3] - Custom HUD with all kinds of useful info. I use this one for coordinates, biome type, etc. I like the text coloring.
  - [MiniHUD] - Custom HUD with all kinds of useful info.  I use the graphical overlays, e.g. chunk borders, light levels. Easier to customize that BetterF3, but no custom text colors.  Requires [MaLiLib].
  - [Continuity] - Allows connected textures (e.g. seamless glass).  Built for Fabric API, also works with Optifine CTM stuff.
  - [Dynamic FPS] - Allows background FPS limiting
  - [Sodium Extra] - *"Sodium Extra aims to bring most of OptiFine's eye-candy options to Sodium; in addition to providing some features such as visual bug fixes and other performance options that are not yet available on Sodium."*
  - [Reece's Sodium Options] - *"Replaces Sodium's Options Screen with intention of improving UX (from the Creator of Sodium Extra)."*
### Shaders:
  - [SEUS Renewed 1.0.1](https://www.sonicether.com/seus/) - this is what I usually use
  - [SEUS PTGI Shaders HRR 3](https://www.patreon.com/posts/download-seus-3-60268558) - beautiful ray tracing! but there are some glitchy issues.
  - [BSL](https://bitslablab.com/bslshaders/)
### Resource Packs:
  - [VanillaTweaks.net](https://www.vanillatweaks.net) - mix and match packs.  e.g. *Borderless Glass + Clean Glass*. Also has data packs.
## Other things maybe worth checking out:
  - [Lithium] - *No-compromises game logic/server optimization mod*
  - [Phosphor] - *No-compromises lighting engine optimization mod*
  - [Nvidium] - *"Replacement rendering backend for sodium that uses nvidia only opengl extensions to increase fps by a significant amount... This mod is in very early alpha, expect many issues and crashes."*
  - [Quilt] modloader (I guess a Fabric spinoff?)
  - [Lamb Dynamic Lights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights) - Adds dynamic lights.
  - [custom window title](https://www.curseforge.com/minecraft/mc-mods/custom-window-title) - Useful for sending AutoHotkey scripts to a uniquely titled window.
  - [List: Optifine replacement mods](https://lambdaurora.dev/optifine_alternatives/) - List of mods which perform some of the functions offered by Optifine, compiled by the creator of OptiFabric.
## Minecraft Gameplay Notes

*updated August 2020*

### little tricks
- F3+T - reloads resource packs, audio devices, and who knows what else
- F3+P - toggle pause on lost focus
- F3+O - shader options (if applicable)
- __inventory tricks:__
  - ctrl+Q - drop stack at cursor (hold down for multiple stacks)
  - double-shift-click with item on cursor - transfer all stacks of that item
  - [Inventory Controls @ Minecraft Wiki](https://minecraft.fandom.com/wiki/Inventory#Managing_inventory)
     
### contraptions

**item sorter:**
- [tutorials @ wiki](https://minecraft.gamepedia.com/Tutorials/Hopper)
- [video - compact sorter (2015)](https://www.youtube.com/watch?v=bx4VULALtqE)
- <details>
  <summary>my mining station's sorter categories:</summary>
  <ol>
    <li> cobblestone
    <li> stone
    <li> diorite
    <li> granite
    <li> andesite
    <li> dirt
    <li> gravel
    <li> coal
    <li>iron
    <li>  gold
    <li>  redstone dust
    <li>  lapis lazuli
    <li>  diamond
    <li>  flint
    <li>  obsidian
    <li>  unsorted:
    <ul>
      <li> emerald
      <li> all ores
    </ul>
  </ol>
  </details>

[ilmango's Very Efficient Slime Farm - 18,200 slimeballs/h (youtube 2017)](https://youtu.be/NBTN_oniHMo)
___
[AutoHotkey script: auto-click](assets/MC_clicker_2_1.16.ahk) - clicks thrice every 140 seconds. F8 starts/stops -- but the toggle doesn't always work. (I usually use 'reload script' instead). Uses AHK v1.

<!-- Page Links ---------->

[Amidst]: https://github.com/toolbox4minecraft/amidst
[BetterF3]: https://modrinth.com/mod/modmenu
[Continuity]: https://modrinth.com/mod/continuity
[Dynamic FPS]: https://modrinth.com/mod/dynamic-fps
[Fabric]: https://fabricmc.net/
[Indium]: https://modrinth.com/mod/indium
[Iris]: https://irisshaders.dev/
[Lithium]: https://modrinth.com/mod/lithium
[MaLiLib]: https://legacy.curseforge.com/minecraft/mc-mods/malilib
[MiniHUD]: https://www.curseforge.com/minecraft/mc-mods/minihud
[ModMenu]: https://modrinth.com/mod/modmenu
[MultiMC]: https://multimc.org/
[Nvidium]: https://modrinth.com/mod/nvidium
[Phosphor]: https://modrinth.com/mod/phosphor
[Quilt]: https://quiltmc.org/en/
[Reece's Sodium Options]: https://modrinth.com/mod/reeses-sodium-options
[SEUS]: https://www.patreon.com/sonicether
[Sodium Extra]: https://modrinth.com/mod/sodium-extra
[Sodium]: https://modrinth.com/mod/sodium