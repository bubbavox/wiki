# minecraft notes & hows-to

## Info / Links:
*updated 2023-07-18*
- AMIDST map explorer - [github](https://github.com/toolbox4minecraft/amidst#amidst) / [forum](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/minecraft-tools/2970854-amidst-map-explorer-for-minecraft-1-14-and-later)


## Current setup:
*updated 2023-07-23*
  - [MultiMC] loader
  - [Fabric] - Both the Fabric API and the Fabric Loader.
  - [Sodium] - boosts rendering performance.  May also require Indium for some mods to work.
  - [Indium] - addon for Sodium, providing support for the Fabric Rendering API.
  - [Iris] - for loading shaders
  - [ModMenu]
  - [BetterF3]
  - [Continuity] - allows connected textures.  built for Fabric API, works with Optifine CTM stuff.
  - [Dynamic FPS] - allows background FPS limiting

## Other mods maybe worth checking out:
  - Sodium Extra
  - Lithium
  - Phosphor
  - [Quilt] modloader (I guess a Fabric spinoff?)

## Shaders:
  - [SEUS Renewed 1.0.1](https://www.sonicether.com/seus/)
  - [SEUS PTGI Shaders HRR 3](https://www.patreon.com/posts/download-seus-3-60268558)
  - [BSL](https://bitslablab.com/bslshaders/)

<!-- Page Links ---------->

[Amidst]: https://github.com/toolbox4minecraft/amidst
[BetterF3]: https://modrinth.com/mod/modmenu
[Continuity]: https://modrinth.com/mod/continuity
[Dynamic FPS]: https://modrinth.com/mod/dynamic-fps
[Fabric]: https://fabricmc.net/
[Indium]: https://modrinth.com/mod/indium
[Iris]: https://irisshaders.dev/
[ModMenu]: https://modrinth.com/mod/modmenu
[MultiMC]: https://multimc.org/
[Quilt]: https://quiltmc.org/en/
[SEUS]: https://www.patreon.com/sonicether
[Sodium Extra]: https://modrinth.com/mod/sodium-extra
[Sodium]: https://modrinth.com/mod/sodium





___
## old info (2020):
*info from my past Minecraft phase*

**Alternative launcher: MultiMC** - [website](https://multimc.org/) / [github](https://github.com/MultiMC/MultiMC5) / [wiki](https://github.com/MultiMC/MultiMC5/wiki) - Custom install locations, multiple instances, Java config, built-in Fabric / Forge installers, etc.   The dev later joined the Minecraft team, but continues to work on MultiMC.  I'm using the development release, which is "mostly stable" at time of this writing. I created 2 instances of Minecraft, each with its own separate install directory.  This way I can swap shaders without changing a bunch of video settings, etc.
1. *Fancy* - Fabric / OptiFabric / Optifine / shaders
2. *Fast* - Fabric / OptiFine

### mod APIs / toolchains (needed for mods; choose 1):
- [Fabric Loader](https://fabricmc.net/) + 
  [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api) - "A lightweight, experimental modding toolchain for Minecraft." The hot sexy new thing. Good [docs](https://fabricmc.net/wiki/doku.php). Plenty of mods available at this point.
- [LiteLoader](http://www.liteloader.com/) - Another hot sexy new thing that I haven't checked out yet. Apparently LiteLoader mods will work alongside Forge mods & OptiFine, and will work with MultiMC.
- [Forge](https://forums.minecraftforge.net/) - old school. In the past, this was the official way to use OptiFine, and thus 

### rendering mods (needed for shaders; choose 1):
- [Optifine](https://optifine.net) - Currently necessary for most shaderpacks, but hopefully will be replaced by Canvas or other Fabric-compatible renderer/mods.  Manages rendering, improves performance, expands graphics config. To use with Fabric, use [OptiFabric](https://www.curseforge.com/minecraft/mc-mods/optifabric).  To use with Forge, check [download page](https://optifine.net/downloads) for compatible version -- [OptiForge](https://www.curseforge.com/minecraft/mc-mods/optiforge) has been necessary for some versions.
- [Sodium]() - Newcomer, Fabric-compatible, with a focus on boosting performance.  Graphics config is almost _too_ simple -- for example, I don't see a setting for resolution.  But performance is great.
- **Canvas Renderer** - [curseforge](https://www.curseforge.com/minecraft/mc-mods/canvas-renderer) / [github](https://github.com/grondag/canvas) - Up and coming.  Keep an eye on this one -- hopefully there will be compatible shaders in the future.  There is a rumor that someone  *"Canvas is a rendering library for Fabric mods that offers visual improvements for players, and also implements an API mod authors can use to implement rendering effects that would not be possible with the vanilla renderer. Canvas also improves chunk-loading and frame rates on most hardware in most scenes..."*

### Some Fabric mods I like (Forge versions may also be available):
*updated August 2020*
- [Mod Menu](https://www.curseforge.com/minecraft/mc-mods/modmenu) -- offers a config for other installed mods
- [MiniHUD](https://www.curseforge.com/minecraft/mc-mods/minihud) -- I find this one essential.  Requires [MaLiLib](https://www.curseforge.com/minecraft/mc-mods/malilib).  Custom status text & overlays, highly configurable, including a light level overlay that is very handy. 
- [Lamb Dynamic Lights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights) - Adds dynamic lights (if not using Optifine).
- [custom window title](https://www.curseforge.com/minecraft/mc-mods/custom-window-title) - useful for sending AutoHotkey scripts to a uniquely titled window.
- [List: Optifine replacement mods](https://gist.github.com/LambdAurora/1f6a4a99af374ce500f250c6b42e8754).  These are mostly single-purpose mods that perform some of the many features built in to Optifine.

### shader packs (for OptiFine):
- [SEUS](https://www.sonicether.com/seus/)
- [Sildurs Shaders](https://sildurs-shaders.github.io)

### my setup:
- Installed official Minecraft Launcher to `D:\Games\Minecraft\Minecraft Launcher` & ran once.
- Installed fresh version of [Java 64-bit](https://www.java.com/en/download/manual.jsp).  See [this page about Java settings](https://github.com/MultiMC/MultiMC5/wiki/Java-settings) -- 32-bit version will limit mod usage.  At time of this writing, you want the latest version of Java 8 'Windows Offline (64-bit)'
- To keep things simple, I make a copy of Java just for Minecraft usage.  I copy the directory `C:\Program Files\Java\jre1.8.0_271` to a new folder: `D:\Games\Minecraft\java_custom\jre1.8.0_271`.
- Setup MultiMC: [official guide here](https://github.com/MultiMC/MultiMC5/wiki/Getting-Started).
  - [Downloaded MultiMC](https://multimc.org/#Download) (I use the development version), unzipped, and moved to `D:\Games\Minecraft\MultiMC`.  
  - Created desktop shortcut to `MultiMC.exe`.
  - Ran MultiMC for the first time:
  - Ensured MultiMC is using the right 64-bit Java; I manually browse to the `D:\Games\Minecraft\java_custom\jre1.8.0_271\javaw.exe` that I created.
  - Set Java memory allocation: typically minimum 1024, max 2048, should be enough for most modded instances. I have 64GB RAM, so I set 1024 / 8192. [More info here](https://github.com/MultiMC/MultiMC5/wiki/Increasing-Java%27s-memory-allocation).
  - Added my account (*Manage Acccount* button in top right)
  - Added instances (button in top left):
    - `Fabric + Sodium`:
      - Installed `Fabric Loader` (`Edit instance > ` then click button on right side bar)
      - Launched the instance and started a singleplayer map to test. OK, closed Minecraft.
      - Downloaded [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api/files/all) and my other favorite Fabric mods, then installed & tested the mods one at a time.
    - `Fabric + OptiFine`:
      - Installed `Fabric Loader` as above.  Tested instance.
      - Downloaded & installed [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api/files/all), [OptiFabric](https://www.curseforge.com/minecraft/mc-mods/optifabric), [OptiFine](https://optifine.net/home), and tested the instance with singleplayer.
      - Installed the rest of my favorite Fabric mods, testing one at a time.
  - General mod installation procedure with MultiMC:
    - Download all mod jar files to MultiMC *Central Mod Folder* (accessible via instance's context menu) e.g. `D:\Games\Minecraft\MultiMC\mods`. Create subfolders if you wish.
    - To enable a mod for an instance, right-click and `edit instance`, then `Loader mods > Add >` choose jar file to add.  Then you are able to easily toggle mods on/off in the `Loader mods` menu.

