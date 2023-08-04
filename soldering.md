---
title: soldering
description: 
published: true
date: 2023-07-22T17:44:04.997Z
tags: 
editor: markdown
dateCreated: 2021-01-27T23:20:36.176Z
---

# Soldering

related: [electrical](electrical.md), [keyboard](keyboard.md)
## reference
EEV [Blog](https://www.eevblog.com/) and [wiki](https://www.eevblog.com/wiki/index.php?title=Main_Page) \
The Current Source - [website](https://www.thecurrentsource.com/) - [youtube](https://www.youtube.com/channel/UCw0U6DtO0PHb3l37eKEAdSg) \
[Kester Knowledge Base](https://www.kester.com/knowledge-base/knowledge-base)

## tools
[soldering tools article @ keeb.io](https://docs.keeb.io/soldering-tools/) (custom mechanical keyboards site)

### my gear:
  - Iron: [KSGER STM32 V2.1S T12 Soldering Station](https://www.amazon.com/dp/B081LRCQJN)
    - see [important notes on KSGER STM32](#KSGER-T12-STM32)
  - Stand: [Aven 17530](https://www.amazon.com/dp/B00LQG47V0)
  - Solder sucker: [Engineer SS-02](https://www.amazon.com/dp/B002MJMXD4)
    - Consider cutting the tip at an angle like [this](https://s3.amazonaws.com/docs.keeb.io/assets/images/misc/desoldering-pump-cut.jpg)
    - Get some bulk replacement silicon tubing
  - Multimeter: [Amprobe AM-530](https://www.amprobe.com/product/am-530/) - [manual](https://d2z7x98lxvbza7.cloudfront.net/resources/AM-520_AM-530_Multimeter_Manual.pdf?_ga=2.171007401.849264497.1567389016-1245258330.1566524400)
  - Solder:
    - [MG Chemicals 63/37 RA flux, 0.032" , 1/2 lb](https://www.amazon.com/dp/B005T8MWQI)
    - [Kester 44 (RA) 63/37 .020", 1 lb.](https://www.amazon.com/dp/B00068IJWC)
  - Flux: [Kester 1544, bottle w/ syringe tip](https://www.amazon.com/dp/B07K4F6SDM)
  - Solder wick: [NTE Electronics SW02-10](https://www.amazon.com/dp/B0195UVWJ8)
  - Tip Tinner: [Thermaltronics FBA_TMT-TC-2](https://www.amazon.com/dp/B00NS4J6BY)
  - Helping hands: [Elenco HH with magnifying glass](https://www.amazon.com/dp/B0002LLWYK)
  - Silicone Mat: [Kaisi 13.7x9.8 inch](https://www.amazon.com/dp/B07DGVJ17H/)
  - Flux Remover: [Tech Spray 1621-10S EcoLine Flux Remover, General Purpose Defluxer, 10 oz Can](https://www.amazon.com/dp/B0002BBWQ8)
### my gear wish list:
  - Solder: Curious about alternative fluxes (RMA, no-clean) and "multicore" solder
  - https://www.banggood.com/DANIU-FG-100-Soldering-Iron-Tip-Thermometer-Temperature-Tester-0-700-p-952899.html?p=RO301526119192201810&custlinkid=700401&cur_warehouse=CN
  
### solder:
  - Diameter: "0.031" jsolder is good for general usage. For SMD components which are smaller, 0.020" is recommended."
  - leaded: Typical Tin/Lead Ratio: 63/37 or 60/40
  - unleaded:
  - silver:
  - rosin-core - 
  - acid core - don't use for electronics
### iron & tips:
  - new tips might need to be broken in for ~1hr (digital station calibration?)
  - cone tip is versatile and precise
  - wedge tip good for batteries, medium wires, etc...

### KSGER T12 STM32
  - requires some tweaking -- see comments [here](https://www.amazon.com/dp/B07PQ1GJZ5) and [here](https://www.amazon.com/dp/B07PMZGPQQ)
  - [this guy](https://www.eevblog.com/forum/reviews/ksger-t12-stm32-v3-1s-soldering-station/msg3081300/#msg3081300) wants to make a DIY replacement board w/ mouser parts lists, etc
  - [video](https://www.youtube.com/watch?v=eKQC9G5SYII) - good review & demonstration of features / flaws, fixes
  - [his followup video](https://www.youtube.com/watch?v=Dy9WUtvdBUk) - more upgrades. still happy with it.
  - [his modified aluminum iron](https://www.youtube.com/watch?v=TbEmq8sXOXA)
  - [this guy](https://www.youtube.com/watch?v=cowgbwU3b5c) got a unit with a blown, leaky main 400v capacitor. [his followup fix](https://www.youtube.com/watch?v=cowgbwU3b5c).  [his ground fix](https://www.youtube.com/watch?v=-6IZ_sBgw8I)
  - [article (unread)](https://www.ptdreamer.com/chinese-stm32-oled-soldering-controller-reverse-engineer-custom-firmware/) - Chinese STM32 Oled soldering controller reverse engineer and custom firmware
  - check for correct wiring
  - check all solder joints for quality
  - if needed, move clock battery from its cramped position
  - heatsink nearly touching power trace, maybe grind or insulate
  - add power led inside switch (see john salt's followup vid)
## how to solder

[nice general how-to video](https://www.youtube.com/watch?v=M2Jf8cebwCs) \
[Soldering Tools & Techniques (focus on surface mount)](https://www.youtube.com/watch?v=PbQMw8VfHLQ)

  - prep iron:
    - keep clean
    - tap excess solder off & clean with wet sponge or coil etc
    - tin tip / wipe / tin tip / solder
  - tin the iron tip
  - pre-tin some things like braided wires
  - typical: heat the piece, apply solder directly (rosin core burns off quickly)
  - wire splicing: 
    - braid the wires together.  
    - pre-tin if desired 
  - temps:
    - typical temps: 315-370C (600-700F)
    - surface-mount: 315
    - big PCB components -- ~ 370C (700F)

## desoldering
- https://youtu.be/Z38WsZFmq8E
- melt joints more easily with a little fresh solder 
#### tiny stuff, surface mount, etc
  - temp ~ 315

## things to check out:

[Pallet Bluetooth Speaker V3 DIY](https://www.youtube.com/watch?v=tU8lUlx3pPY) - really impressive project involving woodworking & custom audio circuitry