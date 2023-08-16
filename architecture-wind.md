## An amateur's notes on using wind calcs from ASCE 7-16

**Disclaimer:** I would highly discourage that anyone follow this as a guide. I'm not educated as an engineer, and I'm also not confident in my interpretation of the standards used. I'm making these notes primarily so that I might refer to them in the future, to refresh my memory.

**Preface:**

For the design of a porch roof being added to a house, I did some rough calcs to determine approx. uplift forces on the posts, since the code official asked for it.  This is sensible -- the porch roof will have significant wind loads, and will also change the loading on the house as a whole.  Realistically, the code official just needs to check a box, and we're going to resist those uplift forces with overkill hardware anyways, so these calculations were mostly driven by my curiosity. 

Most of the uplift force on a typical roof is a result of the Bernoulli effect -- higher wind speeds above the roof result in decreased pressure, resulting in uplift.  Additional uplift is added to the overhangs when wind hits the wall adjacent to the porch roof.  I found that some engineers calculate the vertical loads on soffits based on the horizontal loads of the adjacent wall, and also read some provisions in ASCE 7 that validate this.

There are 2 types of wind loads described in ASCE7: MWFRS (Main Wind Force Resisting System) & C+C (Components & Cladding).  The definitions offered by the book are tragically brief -- The book seems to leave many things dependant upon the interpretation of the trained professionals for whom it is written. 

**Assumptions made:**

**Load type:** I chose to calculate only the MWFRS loads. It seems to me that the posts' connections to the roof/ceiling assembly, and their connections to the footings, are all clearly part of the MWFRS.  I'm assuming (without much confidence) that C+C loads are acting on the independent components and the resultant forces are included in the MWFRS results.  The other significant wind load in this case will be the horizontal load that wants to pull the new roof away from the existing house, or sway the new roof on its posts. For this I will specify overkill details of the attachment of the new porch roof to the existing wall/roof framing, and might even suggest angle bracing for the posts.

**Method of calculation:** There appear to be many different methods used by engineers to estimate loads on a porch roof, none of them being explicitly written for that purpose.  After reading through much of ASCE 7-16, as well as lots of posts in engineering forums, I chose to treat the porch roof as an overhang of the existing structure, and I chose to classify the overall structure as an *enclosed simple diaphragm low-rise building*, because the code offers a simplified calculation for the MWFRS of such a building.  Possible alternatives would be to treat the porch roof as an independent structure, or as an *attached canopy*, provisions for which were recently added to ASCE 7.

**Building type:** Technically, this building might not be *enclosed*. If windows & doors count as openings, it should be classified as *partially open*, but according to my research, it seems that many engineers do not treat windows/doors as openings.  And I assume both would result in similar wind load results pertaining to the exposed "overhang" I am trying to calculate.  I also chose *enclosed* because there are not very many helpful provisions written about *partially open* buildings -- the category was recently added -- and it wasn't clear how to proceed.

Another questionable assumption I made was to categorize the building as a *simple diaphragm*.  The house is a rectangle, but one end third is a carport, and is mostly open.  And the new porch will be a rectangle protruding from the middle third of the house, presenting further irregularity.  Furthermore, the existing roof geometry is highly complex, as if multiple additions had been built with the roof shape as their least concern.

**Calculation assumptions:** The final major assumption is in how I applied the results of the MWFRS calcs shown below. I don't know whether to apply only vertical loads, or to combine vert. & horiz. loads.  And I don't know how to interpret the special overhang load category:

*Where Zone E or G falls on a roof overhang on the windward side of the building, use EOH and GOH for the pressure on the
horizontal projection of the overhang. Overhangs on the leeward and side edges shall have the basic zone pressure applied.*

I don't know what they mean here by *horizontal projection*.  Is that the load projection plane shown in the diagram, or simply the horizontally-built components of the overhang? In my calculations, I try to be conservative, and that Eoh and Goh represent the additional upward force on the exposed underside of the overhang, and must be added to the uplift of its top surfaces E & G.  A less safe assumption would be that the overhang load (Eoh or Goh) represents the total loads on that section of the roof assembly, including both negative pressure above from Bernoulli, and positive pressure below from wind hitting the wall.

**Calculations:**

So. Vertical wind loads for specific zones of an enclosed simple diaphram low-rise building. (ASCE 7-16 28.4, p. 315.)

For the MWFRS calcs, when using this method, horiz. and/or vertical loads can be found for different *zones* of the structure.  To find the loads for different scenarios (different wind directions), one rotates the zone assignments in the book's diagrams, and then looks up that zone in the table.  Overhangs are one of the zones defined, and are only treated as an overhang when on one of the windward sides. 

For example, calculating vertical loads on the porch roof, assuming 2/3 of it is overhang (exposed ceiling), and 1/3 is part of the main roof (built on top of it).
- Scenario 1 (windward corner is SW):
  - Porch roof is windward/side
  - Overhang portion of the roof is divided into zones E & G (plus Eoh and Goh for overhangs).
  - Non-overhang portion is zone G (being in the middle of the main roof)
- Scenario 2 (windward corner is NW):
  - Porch roof is leeward/side
  - Overhang portion is divided into zones F & H.
  - Non-overhang portion is Zone H.

For each scenario, I look up the loads for both Case A and Case B, each having a different wind direction (+/- 45 degrees of the 'windward corner').  In case B, I calculate for roof angle = 0 as instructed. 

Typically one would continue rotating, finding loads for a total of 8 cases (4 windward corners, 2 cases per).  I only checked the cases I thought would result in the highest loads. As expected, the highest uplift loads (lowest pressure values) were in Scenario 1 (windward), Case B.

**Results - A** (conservative assumption that overhang loads should be added to roof loads; i.e. Eoh + E, and Goh + G)
```
-52.8 psf   Roof overhang outer thirds
-45.1 psf   Roof overhang middle third
-50.2 psf   Roof overhang avg. load
-17.5 psf   Roof built over existing roof (unexposed)

513 sf      Area, new roof total
320 sf      Area, new overhang portion (0.62 of total)
193 sf      Area, new unexposed portion (0.38 of total)
107 sf      Area, EACH outer third of overhang (the 2 highest load zones)

16000 lbs   Vertical wind load total on overhang portion
 3378 lbs   Vertical wind load total on unexposed portion

3040 lbs    Weight of overhang portion (9.5 PSF)
1450 lbs    Weight of unexposed portion (7.5 PSF)

12960 lbs   Net uplift load on MWFRS of overhang portion (e.g. posts + house)
 1928 lbs   Net uplift load on MWFRS of unexposed portion (e.g. posts + house)

            Simple calcs*
 7112 lbs   Uplift to house MWFRS             1928 + (0.4)12960
 3110 lbs   Uplift at middle post             (0.4)(0.6)12960
 2333 lbs   Uplift at each outer post (2X)    (0.3)(0.6)12960
  518 lbs   Uplift at each rafter tail (25X)  12960/25
            *Assumptions:
              - the loads on the unexposed portion of new roof is taken completely by the house
              - the remaining load of the overhang portion is uniform across its area
              - house takes its geometrically tributary share of the overhang load (40%)
              - each post takes its geometrically tributary share of the remaining overhang load (30% - 40% - 30%)
              - each rafter takes an equal share of the load of the overhang portion (!!!)
```

**Results - B** (assuming that overhang values in table represent all loads on the assembly (i.e. Eoh & Goh INSTEAD of E & G))

-35.3 psf   Roof overhang outer thirds
-27.6 psf   Roof overhang middle third
-32.7 psf   Roof overhang avg load
-17.5 psf   Roof unexposed portion (built over existing)

10464 lbs   Vertical wind load total on overhang portion
 3378 lbs   Vertical wind load total on unexposed portion

 7424 lbs   Net uplift load on MWFRS of overhang portion (e.g. posts + house)
 1928 lbs   Net uplift load on MWFRS of unexposed portion (e.g. posts + house)

            Simple calcs*
 6114 lbs   Uplift to house MWFRS             1928 + (0.4)10464
 2511 lbs   Uplift at middle post             (0.4)(0.6)10464
 1884 lbs   Uplift at each outer post (2X)    (0.3)(0.6)10464
  419 lbs   Uplift at each rafter tail (25X)  10464/25
            *Assumptions:
              - the loads on the unexposed portion of new roof is taken completely by the house
              - the remaining load of the overhang portion is uniform across its area
              - house takes its geometrically tributary share of the overhang load (40%)
              - each post takes its geometrically tributary share of the remaining overhang load (30% - 40% - 30%)
              - each rafter takes an equal share of the load of the overhang portion (!!!)
