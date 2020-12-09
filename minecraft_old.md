# minecraft notes

[MultiMC Launcher](https://multimc.org/) - Alternative launcher.  Java config, multiple instances, custom install locations, built-in Fabric / Forge installers, etc.  I have 2 instances -- one with Optifine & shaders, and one performance-focused, using Sodium.  See my usage notes [below](minecraft.md#my-setup).

[AMIDST map explorer](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/minecraft-tools/2970854-amidst-map-explorer-for-minecraft-1-14-and-later)

## mod APIs / toolchains (choose 1)
- [Fabric Loader](https://fabricmc.net/) + 
  [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api) - "A lightweight, experimental modding toolchain for Minecraft." The hot sexy new thing. Good docs. Plenty of mods available at this point.
- [Forge](https://forums.minecraftforge.net/) - old school. The official way to use Optifine + shaders, and many mods.
## rendering mods (choose 1)
- [Optifine](https://optifine.net) - (Check preview versions) Necessary for most current shaderpacks. Manages rendering & improves performance.  Greatly expands graphics config options. Historically compatible with Forge. Currently compatible with Fabric via [OptiFabric](https://www.curseforge.com/minecraft/mc-mods/optifabric) but [the future looks bleak](https://gist.github.com/LambdAurora/1f6a4a99af374ce500f250c6b42e8754).
- [Sodium]() - Newcomer, Fabric-compatible, with a focus on boosting performance.  Graphics config is almost _too_ simple -- for example, I don't see a setting for resolution.  But performance is great.
- [Canvas]() - Up and coming: *"Canvas is a rendering library for Fabric mods that offers visual improvements for players, and also implements an API mod authors can use to implement rendering effects that would not be possible with the vanilla renderer. Canvas also improves chunk-loading and frame rates on most hardware in most scenes..."*

  "...*However, I don't expect third-party shaders to be available until Canvas is more feature complete.  Canvas does however come with a default shader pack that currently adds a bloom effect for most emissive blocks and wavy foliage was just added. More is coming soon.*

## Fabric mods (Forge versions may also be available)
- [Mod Menu](https://www.curseforge.com/minecraft/mc-mods/modmenu) -- offers a config for other installed mods
- [MiniHUD](https://www.curseforge.com/minecraft/mc-mods/minihud) -- I find this one essential.  Requires [MaLiLib](https://www.curseforge.com/minecraft/mc-mods/malilib).  Custom status text & overlays, highly configurable, including a light level overlay that is very handy. 
- [Lamb Dynamic Lights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights) - Adds dynamic lights (if not using Optifine).
- [custom window title](https://www.curseforge.com/minecraft/mc-mods/custom-window-title) - useful for sending AutoHotkey scripts to a uniquely titled window.
- [List: Optifine replacement mods](https://gist.github.com/LambdAurora/1f6a4a99af374ce500f250c6b42e8754).  These are mostly single-purpose mods that perform some of the many features built in to Optifine.
## shader packs
- [SEUS](https://www.sonicether.com/seus/)
- [Sildurs Shaders](https://sildurs-shaders.github.io)

## my setup:
  - First I installed Minecraft Launcher as usual, and created a 1.16.1 installation.  Then quit the Launcher. 
  - Then I installed a fresh version of [Java 64-bit](https://www.java.com/en/download/manual.jsp). 
  - Then I installed MultiMC: `D:/Games/MultiMC`, and created 2 instances (creating new folders within `../MultiMC/instances` ).  
  - optional & probably unnecessary: To ensure Minecraft isn't using a 32-bit Java exe, I place a copy of the 64-bit `javaw.exe` in a folder and tell MultiMC where to find it. Caveat: this copy won't be auto-updated by Java.
  - also probably unnecessary: I configured MultiMC to give Java up to 6GB RAM -- even though 1GB is probably enough.
  - I place mod files in MultiMC's "central mods folder", and then manage each instance's mods via its _Loader Mods_ menu.    
  - I have 2 instances set up:
    - 1.16.1 Fabric / Optifine / Optifabric / Mod Menu / MiniHUD -- SEUS shaders -- I get 30-100 FPS.
    - 1.16.1 Sodium / Lithium / Phosphor / Mod Menu / MiniHUD / LambDynamicLights -- I get like 500 FPS.
    
 ## tips & tricks
  - F3+T - reloads resource packs, audio devices, and who knows what else
  - F3+P - toggle pause on lost focus
  - F3+O - shader options (if applicable)
  - __inventory tricks:__
    - ctrl+Q - drop stack at cursor (hold down for multiple stacks)
    - double-click with item on cursor - transfer all stacks of that item
    
## contraptions

### item sorter
- [tutorials @ wiki](https://minecraft.gamepedia.com/Tutorials/Hopper)
- [video - compact sorter (2015)](https://www.youtube.com/watch?v=bx4VULALtqE)

<details>
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

## mob farms

### slime farm

[ilmango's Very Efficient Slime Farm - 18,200 slimeballs/h (2017)](https://youtu.be/NBTN_oniHMo)

## AutoHotkey scripts

auto-click: F8 stops/starts -- clicks thrice every 140 seconds. \
[script file](assets/MC_clicker_2_1.16.ahk)