# Soldering

## reference
EEV [Blog](https://www.eevblog.com/) and [wiki](https://www.eevblog.com/wiki/index.php?title=Main_Page) \
The Current Source - [website](https://www.thecurrentsource.com/) - [youtube](https://www.youtube.com/channel/UCw0U6DtO0PHb3l37eKEAdSg) \
[Kester Knowledge Base](https://www.kester.com/knowledge-base/knowledge-base)

## tools
[soldering tools article @ keeb.io](https://docs.keeb.io/soldering-tools/)

### my gear:
  - Multimeter: [Amprobe AM-510](https://www.amazon.com/gp/product/B007FZFTZO/)
  - Iron: [KSGER STM32 V2.1S T12 Soldering Station](https://www.amazon.com/dp/B07PMZGPQQ)
    - see [important notes on KSGER STM32](#KSGER-STM32)
  - Stand: [Aven 17530](https://www.amazon.com/dp/B00LQG47V0)
  - Solder sucker: [Engineer SS-02](https://www.amazon.com/dp/B002MJMXD4)
    - Consider cutting the tip at an angle like [this](https://s3.amazonaws.com/docs.keeb.io/assets/images/misc/desoldering-pump-cut.jpg)
    - Get some bulk replacement silicon tubing
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
  
### solder:
  - Diameter: "0.031" jsolder is good for general usage. For SMD components which are smaller, 0.020" is recommended."
  - leaded: Typical Tin/Lead Ratio: 63/37 or 60/40
  - unleaded:
  - silver:
  - rosin-core - basically, has a flux core.  use this for electronics
  - acid core - don't use for electronics
### iron & tips:
  - new tips need to be broken in for ~1hr?
  - cone tip is versatile and precise
  - wedge tip good for batteries, medium wires, etc...

### KSGER STM32
  - requires some tweaking -- see comments [here](https://www.amazon.com/dp/B07PQ1GJZ5) and [here](https://www.amazon.com/dp/B07PMZGPQQ)

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

## how to de-solder
  - melt joints more easily with a little fresh solder 
#### tiny stuff, surface mount, etc
  - temp ~ 315