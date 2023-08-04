---
title: networking
description: 
published: true
date: 2023-07-22T17:43:34.875Z
tags: 
editor: markdown
dateCreated: 2023-07-22T17:43:32.224Z
---

# Networking

### Cascading or Connecting a Linksys router to another router

- [Linksys article](https://www.linksys.com/us/support-article/?articleNum=132275)
- **LAN to LAN** - Connecting one of the main router's ethernet port to the secondary router's ethernet port.
  - This type of cascading requires the main and the secondary routers to be on the same LAN IP segment to allow the computers and other devices to connect to both routers.  To do this, you need to disable the secondary router's DHCP server.  This configuration is recommended if you want to share files and resources within the network.  For a video tutorial on this setup, click here.
    - NOTE:  When cascading routers using this method, you will be able to access the web-based setup page of the secondary router by using the new IP address you've assigned to it in Step 4 (LAN-LAN configuration).
- **LAN to WAN** - Connecting one of the main router's ethernet port to the secondary router's internet port.
    - This type of cascading requires the main router and the secondary router to have different IP segments.  This connection makes it easier to identify which router the computers and other devices in the network are connected to since they will have different LAN IP segments.  However, computers that are connected to the main router will not be able to communicate with the secondary router, and vice versa since there are two different networks.
    - NOTE:  Before you connect a Linksys router to another router, make sure that both routers have different IP addresses.  This is necessary to avoid conflict and connectivity issues in the local network if they have similar IP addresses.  In this case, you need to change the IP address of the secondary router.  For instructions on how to change the router’s LAN IP address, click here.