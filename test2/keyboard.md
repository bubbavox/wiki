---
title: keyboard
description: 
published: true
date: 2023-07-22T17:43:17.345Z
tags: 
editor: markdown
dateCreated: 2021-01-27T23:20:11.805Z
---

# keyboard

related: [soldering](soldering.md)

## build - KBD75

hot swappable 75% keyboard -- work in progress

### to do

- test hotswap sockets:
  - test fit in all switch models
  - test rotational position on switch pin, to determine installation method.
  - example scenario:  if Kailh switches are found the most difficult fit, perhaps solder sockets while they are fit on Kailh switches, mounted to plate.

### PCB

[KBDfans KBD75 Rev 2 USB-C](https://kbdfans.com/collections/75/products/kbdfans-75-pcb-75)

### hotswap sockets

[Mill-max 7305-0-15-15-47-27-10-0](https://www.mouser.com/ProductDetail/?qs=QVz7UnnaAAGZJgZDI7Hd%2FA%3D%3D)

**issue:** the F-row thru-holes are wider, for some reason, and soldering the sockets in will be less straightforward.  I might put the sockets on the switch pins, and mount the switches on the plate or the board, and then solder the sockets.

Compared to the popular choice [0305-2-15-80-47-80-10-0](https://www.mouser.com/ProductDetail/Mill-Max/0305-2-15-80-47-80-10-0?qs=QtQX4uD3c2Uys0ai6Tr8NQ%3D%3D), these 7305 sockets are more flush to the PCB, and protrude less out the back.  On the keyboard I tested, the 0305 sockets prevented plate-mount switches from seating fully.  The 7305 with its shorter tail might be a bit harder to solder, but I don't think it will be a problem.
### layout

ANSI with split spacebar (3-way split). 86 keys.

### case

hand-carved wooden case

### I/O

bluetooth + USB. still a big unknown.

#### desired features:
  - USB-out (pref USB-C) - so maybe USB "passthru" from the KBD75 USB-C out
  - bluetooth low-energy out
  - battery charging (while device is in use) ([relevant product?](https://www.adafruit.com/product/2465))

#### I/O prospects:
  - [Adafruit Feather nRF52840 Express](https://www.adafruit.com/product/4062)
  - [Bluetooth Adapter (Handheld Scientific)](http://handheldsci.com/kb/)

#### adafruit - bluetooth feathers:
  - [general info](https://learn.adafruit.com/adafruit-feather/bluetooth-feathers)
  - [adafruit product category: BLE](https://www.adafruit.com/category/727)

#### battery:
  - [adafruit product category: liion & lipoly](https://www.adafruit.com/category/138)

## modification: GMMK TKL

### wishlist:
- replace micro USB port with USB-C
- add in-line programmable microcontroller, maybe an adafruit bluetooth module with battery