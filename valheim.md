---
title: valheim
description: 
published: true
date: 2023-07-22T17:44:19.104Z
tags: 
editor: markdown
dateCreated: 2023-07-22T17:44:16.623Z
---

# Valheim

## misc. links

- [Valheim Character Editor](https://github.com/byt3m/Valheim-Character-Editor)

## dedicated server

- [official guide (PDF)](assets/Valheim%20Dedicated%20Server%20Manual.pdf)
- [guide - PCGamer](https://www.pcgamer.com/valheim-multiplayer-dedicated-server/)
- [guide - vg247](https://www.vg247.com/2021/02/17/valheim-multiplayer-set-dedicated-server-co-op-options-explained/#section2)

- [Valheim server docker image](https://github.com/lloesche/valheim-server-docker)

### Dedicated server on my desktop PC (same machine running game client):
- Install *Valheim Dedicated Server*: 
  - `Steam Library > Tools > Valheim Dedicated Server`
- Configure port forwarding:
  - My configuration has 2 routers in series
  - router1 forwards the ports to router2
  - router2 forwards to my machine
  - note, router2 has set my machine to a static IP via the *DHCP reservation* feature, which associates my MAC address to an IP. An alternative would be setting the static IP on my PC.
- Configure server script (created custom script that won't be overwritten by game updates)
  - `....\steamapps\common\Valheim dedicated server\start_headless_server_custom.bat`
  - follow PDF guide to configure arguments in script
  - run script to start game server

### Server backup to OneDrive (with Bvckup2):
  - Valheim world files are within `C:\Users\bubba\AppData\LocalLow\IronGate\Valheim` -- this folder is used by both the game client and the dedicated server client.
  - Valheim saves a 20-minute backup of the world files 
  - My backup: Bvckup2 copies this dir to OneDrive every 10 min, if changes are detected.
  - Fellow admins are given access to this OneDrive backup.
  - If the server goes down, copy the cloud backup to your machine and continue playing (will lose at most 10 minutes of progress). Then copy it back to OneDrive, **into a new versioned folder (else it might be overwritten by another auto-backup)** e.g. `Valheim_fork_2021-02-20-1523_description`.
