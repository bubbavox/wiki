# minecraft notes

[MultiMC Launcher](https://multimc.org/) - Alternative launcher.  Java config, multiple instances, custom install locations, built-in Fabric / Forge installers, etc...

### mod APIs / toolchains (choose 1)
- [Fabric Loader](https://fabricmc.net/) + 
  [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api) - "A lightweight, experimental modding toolchain for Minecraft." The hot sexy new thing. Good docs. Plenty of mods available at this point.
- [Forge](https://forums.minecraftforge.net/) - old school. The official way to use Optifine + shaders, and many mods.
### rendering mods (choose 1)
- [Optifine](https://optifine.net) - (Check preview versions) Necessary for most current shaderpacks. Manages rendering & improves performance.  Greatly expands graphics config options. Historically compatible with Forge. Currently compatible with Fabric via [OptiFabric](https://www.curseforge.com/minecraft/mc-mods/optifabric) but [the future looks bleak](https://gist.github.com/LambdAurora/1f6a4a99af374ce500f250c6b42e8754).
- [Sodium]() - Newcomer, Fabric-compatible, with a focus on boosting performance.  Simplifies graphics config.
- [Canvas]() - Up and coming, optimized for fancy rendering via the Fabric API (maybe no shaderpacks yet available though)

### Fabric mods (Forge versions may also be available)
- [Mod Menu](https://www.curseforge.com/minecraft/mc-mods/modmenu) -- offers a config for other installed mods
- [MiniHUD](https://www.curseforge.com/minecraft/mc-mods/minihud) -- I find this one essential.  Requires [MaLiLib](https://www.curseforge.com/minecraft/mc-mods/malilib)
- [custom window title](https://www.curseforge.com/minecraft/mc-mods/custom-window-title) - useful for sending AutoHotkey scripts to a uniquely titled window.
- __Optifine replacement mods:__ (again, see [this page](https://gist.github.com/LambdAurora/1f6a4a99af374ce500f250c6b42e8754))
### shader packs
- [SEUS](https://www.sonicether.com/seus/)
- [Sildurs Shaders](https://sildurs-shaders.github.io)

### my setup:
First installed Minecraft Launcher as usual.  Then MultiMC, adding 2 instances (choosing folders on my 2nd SSD).  To ensure Minecraft isn't using a 32-bit Java, I place a 64-bit `javaw.exe` in a folder and tell MultiMC where to find it. And I tell it to give Java up to 4GB (I think).
  1. Fabric / Optifine / Optifabric / Mod Menu / MiniHUD -- SEUS shaders -- I get 30-100 FPS.
  2. Sodium / Lithium / Phosphor / Mod Menu / MiniHUD / LambDynamicLights -- I get like 500 FPS (but I use vsync).