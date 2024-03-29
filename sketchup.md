---
title: sketchup
description: 
published: true
date: 2023-08-04T19:47:28.186Z
tags: 
editor: markdown
dateCreated: 2021-01-27T23:20:27.539Z
---


# SketchUp        <!-- omit in toc -->

related: [SketchUp + Ruby](sketchup_ruby.md), [Rendering](rendering.md), [VR](VR.md)

--------------
## contents        <!-- omit in toc -->

- [extensions](#extensions)
- [My setup](#my-setup)
- [controls](#controls)
- [backups](#backups)
- [saving \& restoring settings](#saving--restoring-settings)
- [best practices](#best-practices)
- [workflows](#workflows)
  - [**Remodel / Addition:**  From conceptual design to construction documents.](#remodel--addition--from-conceptual-design-to-construction-documents)
- [materials](#materials)
  - [basics: nested materials \& the *default* material:](#basics-nested-materials--the-default-material)
  - [component materials workflow](#component-materials-workflow)
  - [misc. Materials tips:](#misc-materials-tips)
- [Axes \& Inference](#axes--inference)
- [misc. tips](#misc-tips)
- [techniques](#techniques)
  - [proxy modeling](#proxy-modeling)
- [My to do](#my-to-do)

--------------

## extensions

**My existentially essential extensions (MEEE):**

- [Selection Toys]
- [Eneroth Solid Tools] -- _"Solid tools designed to feel native to SketchUp."_
- [Solid Inspector²] -- _"Select a group or component and activate the tool for an analysis of what would prevent it from being a solid manifold."_ An example usage: Solid Tools such as Trim require objects to be true solids.
- [CleanUp³] -- requires [TT_Lib²] -- fix / purge / merge / repair
- [Auto Invisible Layer] -- When enabled, changes SketchUp's default behavior of new layers being enabled in all scenes.  Disabled by default at the start of each session.
- [Turn Off Layer In All Scenes (TOLIAS)] --  Turns off the _active_ layer in all scenes.  I'm working on my own modified version which also turns _on_ a layer in all scenes.
- [SketchUp Shapes]
- [Eneroth Legacy Save]
- [Material Replacer] -- requires [TT_Lib²] -- _"Replace one material for another by picking material in the model"_. __SketchUp has [material replacement built-in](https://help.sketchup.com/en/sketchup/adding-colors-and-textures-materials#replace-material) but it seems to only work within a modelling context, i.e. within a group...(investigate)__


**Some more of my favorite plugins:**

- [Attribute Inspector] (Aerilius) - [github](https://github.com/Aerilius/sketchup-attribute-inspector) -  *A viewer and editor for entity and model attributes*
- [Eneroth Visual Merge] -- $ / trial -- automagically hides lines & faces where selected groups touch, making them appear to be seamless.
- [Eneroth Texture Positioning Tools] -- quickly rotate textures or align texture with an edge
- [Component Properties] -- requires [TT_Lib²]
- [SubD] -- $ / trial
  - [website](https://evilsoftwareempire.com/subd)
  - [manual](https://evilsoftwareempire.com/subd/manual)
  - [SubD forum @ Sketchucation](https://sketchucation.com/forums/viewforum.php?f=397)
- [Quad Face Tools] -- requires [TT_Lib²]
  - [wiki](https://github.com/thomthom/quadface-tools/wiki)
  - [other quad extensions](https://evilsoftwareempire.com/subd/quads/extensions)
- Vertex Tools -- $ / trial -- [website](https://evilsoftwareempire.com/vertex-tools)
  - [manual](https://evilsoftwareempire.com/vertex-tools/manual)
- [Material Tools] -- requires [TT_Lib²]
- [Axes Tools] -- requires [TT_Lib²] -- _"Small utilty that reset the axis of components to their bounding box' centre or corners."_
- [FredoScale] -- Requires [LibFredo] -- "...Orientate the selection box around a set of objects and interactively apply a number of geometric transformations, such as Scaling, Tapering, Stretching, Plane Shear, Twisting, Bending and Rotation..."_
- [FredoGhost] -- Requires [LibFredo] -- Automates proxy modelling, temporarily swapping complex models with simplified "ghost" versions which are generated by the plugin. This improves performance, and also allows display of multiple styles at once.
- [Archiver] - Automates the saving of archive/option versions of the project.
- [Pipe Along Path] - Turns lines into pipes -- great for plumbing!
- [Eneroth Pipe] -- $ / trial -- similar to Pipe Along Path but probably better
- [Selection Memory] 

**Here are some interesting extensions I haven't tried yet:**

- [Make Named Group](https://extensions.sketchup.com/extension/753c9766-22e7-4ee3-865a-6db9a37b2e60/make-named-group) (TT)
- [mc-Named_Group](https://extensions.sketchup.com/extension/e5fd3e06-d1ec-4c9d-88ae-f37742a0d396/mc-named-group)
- [Profile Builder] - $ / trial
- [Double-Cut] - $ / trial
- [Edge Tools] -- requires [TT_Lib²]
- [Eneroth Layer Painter] -- $ / trial -- see *known issues / limitations*
- [Eneroth Swift Layer Visibility Control] -- $ / trial
- [Unwrap and Flatten Faces] -- [website](https://alexschreyer.net/projects/flatten-faces-plugin/) -- [github](https://github.com/alexschreyer/SketchUp-Flatten-Plugin)
- [Face Centroid and Area Properties] -- _"Get accurate face properties: Centroid, Area, Moment of Inertia, and Radius of Gyration"_ -- [website](https://alexschreyer.net/projects/flatten-faces-plugin/) -- [github](https://github.com/alexschreyer/Face-Centroid-and-Properties-Plugin)
- [TrueBend]
- [FredoCorner] -- Requires [LibFredo]
- [RoundCorner] -- Requires [LibFredo]
- [Eneroth Component Replacer] -- _"Swiftly pick up any component or group and replace others with it."_
- [Animator]
- [Architect Tools]
- [ClothWorks]
- [Eneroth Fractal Terrain Eroder]
- [Split Tools]
- [Joint Push Pull] -- Requires [LibFredo]
- [Eneroth Material Extractor]
- [TIG: SKM Tools, Material Tools, and Image Tools]
- [Material Resizer] (SketchUp team)
- [Bezier Curve Tool] (SketchUp team)
- [Repeat Place Component]
- [Eneroth Tool Memory] -- $ / trial
- [HouseBuilder] - nifty old plugin create by Steve Hurlbut and D. Bur, and later fixed by TIG. see also Framer plugin
- 3skeng
- Curviloft
- CutList -- $ / trial
- Engineering Toolbox
- Layer Manager
- Line up axes (Eneroth)
- Mass Material Importer
- BW_Framer

**Some plugin authors & their websites:**
- ThomThom - [SEW](https://extensions.sketchup.com/user/extensions/1596327803470505363806298/ThomThom) - [Sketchucation](https://sketchucation.com/pluginstore?pauthor=thomthom) - [GH](https://github.com/thomthom) - [website](https://www.thomthom.net/thoughts/)
- Eneroth - [SEW](https://extensions.sketchup.com/user/extensions/1438951607944306779129789/Eneroth3) - [Sketchucation](https://sketchucation.com/pluginstore?pauthor=eneroth3) - [website](http://julia-christina-eneroth.se/)
- Alex Schreyer - [SEW](https://extensions.sketchup.com/user/extensions/1210130985145376656046078/alexschreyer) - [Sketchucation](https://sketchucation.com/pluginstore?pauthor=alexschreyer) - [website](https://alexschreyer.net/)
- Chris Fullmer - [SEW](https://extensions.sketchup.com/user/extensions/u911d4c63-c668-4666-9a35-9333c4064b8e/Chris%20Fullmer) - [Sketchucation](https://sketchucation.com/pluginstore?pauthor=Chris%20Fullmer)
- Fredo6 - [SEW](https://extensions.sketchup.com/user/extensions/u568048c8-23e8-4df7-bdb0-b1538f55d7fa/Fredo6) - [Sketchucation](https://sketchucation.com/pluginstore?pauthor=fredo6)
- TIG - Sketchucation - SEW
- Aerilius - SEW - Sketchucation - [GH](https://github.com/Aerilius)
- mind.sight.studios - [SEW](https://extensions.sketchup.com/user/extensions/1227382186648254578622562/mind.sight.studios) - [website](https://mindsightstudios.com/)

----------------

## My setup

- [Screenshot of my UI](assets/sketchup_screenshot_UI.png) (old)
- *Preferences:*
  - *File locations* - these can be imported/exported.  I edit the text file to point to my custom folders.
    - note: templates cannot be set to a custom location (maybe by symlink?).
  - *Shortcuts* - these can be imported / exported. See [list of shortcuts](#controls).
  - *Notify me when problems are fixed* - `enabled`.
  - *Allow checking for updates* - `disabled` for speed.
  - *Show Welcome Window* - `disabled` for speed.
  - *Tool Palette: Use large tool buttons* - `disabled`.
- Customize toolbars.
- Customize trays:
  - Set `Entity Info` as a free-floating window.
  - Create tray tabs, depending on screen size: `Main, Outliner, Tags, Scenes, Materials, Components`
  - Set keyboard shortcuts for trays.
  - Set options for each tray
  - Note: working while Outliner is visible can slow things down
- Styles & Templates:
  - Speedy styles:  For modelling (rather than for rendering or for Layout usage) I tweak the style for performance, disabling extra lines such as profiles.
  - I usually set line weight to minimum because I like the look and I think it helps a little with the problem of lines showing through thin solids.
  - I like to model with a dark greyscale background to make it easier on my eyes.  But sometimes it's nice to use more cheerful colors.
  - I usually disable ground (in *Styles*), as well as shadows on ground (shadow options -- must enable shadows to toggle).  Otherwise, even if ground is hidden, shadows will be rendered on the "ground plane".

--------------------

## controls

I think keyboard shortcuts are essential to efficient, fluid work.

I use a WASD hand position (gamer-style), and have chosen key assignments based on ergonomics / frequency of use.  This means that my fingers generally stay resting on the WASD keys, and my right hand generally stays on the mouse.

To further ergonomify, I've swapped a few keys around on the keyboard, using [SharpKeys]: \
`Ctrl` <--> `Caps` \
`Esc` <--> `~`

**My keyboard shortcuts:**
<details>
  <summary>(click to expand)</summary>
  
command     | key binding
------------|------------
space       | Selection tool
V           | Move
C           | Line
D           | Push/Pull
Q           | Rotate
S           | Scale
R           | Rectangle
shift-C     | Circle
shift-R     | Offset
B           | Paint Bucket (hold ALT to sample material)
shift-E     | Eraser
Z           | Undo
shift-Z     | Redo
shift-V     | Paste in Place
W           | Make Group
shift-W     | Make Component
ctrl-R      | Make Unique
A           | Hide Rest of Model
shift-Q     | Update Scene
shift-T     | Trim ([Eneroth Solid Tools])
alt-Z       | Zoom Extents
E           | UI - Toggle Entity Info (I use a loose tray window for Entity Info)
alt-A       | UI - Show Outliner Tab
alt-S       | UI - Show Layers Tab
alt-D       | UI - Show Scenes Tab
shift-R     | Reverse Faces (must have a face selected to create shortcut)
alt-I       | Show Model Info -- esp. useful for a quick 'Purge Unused'.
  
</details>

Note that keyboard shortcuts can only be set while they are usable.  For example, to assign a shortcut to *Reverse Faces* you must first select a face.

-------------

## backups
By default, SketchUp autosaves to a temp file, and if the program crashes it offers to load that file.  I save my files directly to a cloud folder (OneDrive).  For extra protection, I use [Bvckup2](https://bvckup2.com/) to automatically keep a 1:1 backup of my entire *projects* folder, as well as archive timestamped copies of any files which are modified or deleted (to a different local drive).  I also use the software to make occasional to an external drive.  These backups have saved me a lot of trouble.

-----------

## saving & restoring settings

[helpful thread @ SketchUp forums](https://forums.sketchup.com/t/toolbars-and-setup-when-updating/115002/4)

- **keyboard shortcuts & folder locations:** these settings can be imported / exported to a single file.
- **custom UI:**  I think it's possible to backup your UI config, but it's not straightforward, and I've not tested it sufficiently. On a fresh install, I always customize the UI from scratch.
- **plugins:** SketchUp installs plugins in `%appdata%\SketchUp\SketchUp 2021\SketchUp\Plugins`.  While it seems to work to simply backup & restore this folder, I play it safe and either reinstall fresh plugins from the Extension Warehouse, or install my backed up `.rbz` files using the Extension Manager.
- **templates:** Stored in `%appdata%\SketchUp\SketchUp 2021\SketchUp\Templates`. Note: this folder location cannot be customized in SketchUp preferences.  I place a helpful shortcut to this folder in my personal templates folder, and copy templates over as needed.  If you really wanted to use a custom location, you could probably do it with symlinks[https://en.wikipedia.org/wiki/Symbolic_link], but that's pretty advanced.

--------------

## best practices
*updated 2023-08-04*

- Simple heirarchies: Leverage groups & tags, but only create as much complexity as needed.
  - This facilitates faster navigation of the model, faster modification of entities, and makes it easier to *change* the heirarchy if needed.
  - e.g. for concept modeling, have simple 'shell' walls, and put door/window components inside them, so that doors/windows can be easily selected and moved along with raw openings in the wall. Likewise, minimize groupings in doors/windows, so that it's easy to resize them, by selecting raw geometry with a selection box.
- Don't repeat yourself ([D.R.Y.])
  - components
  - templates
  - material collections
  - style collections
- Always have 'Untagged' set as the active tag.
- Simplify geometry as much as possible.  This will make it easier to modify, and also will improve performance.  
- Be careful when using models from other users, or imported from other software -- they might have overly complex geometry, might contain unusual groupings or component cloning, or might introduce new tags & materials into your model.
- Customize [keyboard shortcuts](#controls) for your workflow.
- Name things, and use Outliner.  Give Outliner an easy keybind (I use alt+S).
- Make [backups](#backups).
- **LayOut specific best practices:**
  - When possible, make changes in SketchUp, rather than in LayOut. Because [D.R.Y.], and also because SU has better performance/stability and is easier to use.
    - Use SketchUp scenes to control what is visible in a viewport.
    - Draw 2D lines in SU when practical. This minimizes what needs to be managed in LayOut, and carries those lines into copied viewports, etc. 
      - For example, 2D dashes indicating hidden geometry can be placed in the same group as a corresponding 3D element, and assigned a tag such as `2D-dashed`. This way, if you move the 3D objects, the 2D dashed lines will also move. If the lines are specific to a single document view, they could be tagged with something like `2D-dashed-P1`..
  - Minimize what is shown in each view.  Select only necessary tags. In the SU model, use entities with simple geometry, or even 2D.
    - I maintain a collection of custom components -- things like sofas, toilets, shower enclosures -- each of which contains a 3D object tagged `>3D`, and a corresponding 2D object tagged `>2D` for use in plan views. Sometimes they also contain dashed lines tagged with `>2D dashed`.  The `>` prefix is for the sorting of my tag list. I always use those tags, and my SU/LO templates are set up accordingly.  
  - Work in raster when possible, then later change to vector/hybrid if necessary. (performance)
  - Render low- or medium-res, output high-res. (performance)
  - Use Layers.  Consider adopting a similar workflow as with SketchUp Tags: working always in the Default layer, and manually assigning Layers to elements after they are created.  In LayOut, it's even easier for Layers to get out of control, than in SketchUp.
    - example layers:  `Default, on every page, page notes, labels, dimensions, drawn-A, model-A, drawn-B, model-B`
  - I get a frequent crash in 2023, when I render views.  I think I've found a workaround, see this [post](https://forums.sketchup.com/t/layout-crashing-frequently-su-2023/234944) on SU forums.
  
--------------

## workflows
*updated 2023-08-04*

semantics preface:
"object" vs. "entity"  I use them somewhat sloppily.  I usually use 'entity' to mean "a sketchup thing".  In the SketchUp docs, it is mentioned that 'object' refers to a group, component, or a section plane.  Shrug.
"Entity" and "Object" are important words for programmers who write SketchUp extensions in the Ruby language, which is an object-oriented language.  I think it's funny how some words exist to define something as loosely as possible, but in technical contexts are very strictly defined.  
"container" = my generic term for a group or component.
"group" vs. "component"; Usually a statement about a group also applies to components -- a component is a group with extra features.

### **Remodel / Addition:**  From conceptual design to construction documents.
Potential requirements:
- show proposed / existing / demo elements -- both independently and simultaneously.  
- rapid prototyping of different layouts & materials
- export model to external software (e.g. rendering)
- generate reports (e.g. material lists, areas)
- work w/ LayOut in all stages, for creation of various presentations.  Whenever possible, make changes in SketchUp, rather than in LayOut ([D.R.Y.], and also LO can be a pain)
- be accessible to others via SketchUp, 3Dwarehouse, or SketchUp Viewer.

In the early conceptual phase, assemblies (floors, walls) will be simple 'shell' solids with minimal sub-groups, to make it easy to experiment with layouts, window placement, etc.

Once the basic schematic design is established, structural details will be added, and construction documents made. Sometimes the shell assemblies will suffice with minimal change, but sometimes it's necessary to add sub-assemblies (e.g. `floor framing`, `floor sheathing`, `floor finish`). Sometimes I *replace* the shell entities with these detailed assemblies -- other times I *combine* them.  Example: `wall shell` is 5 in. thick to represent the full wall assembly, then later represents the `wall cladding` (int. gypsum and/or ext. siding), with `wall framing` and `wall sheathing` inside it.

I like to maintain just one SketchUp model for any given project, when possible.  One of the exceptions might be when using rendering software -- it might be necessary to heavily modify the heirarchies or materials in a model, in order to make rendering easier.  And sometimes after the concept phase is complete, I make a new model for structural design & documentation.

**heirarchies** (via grouping / tagging):
*WIP 2023-08-09*

SketchUp tags aren't like most tagging systems: In SketchUp, any given object can have only 1 tag. You can work around this to an extent, by putting that object in another container, and then giving that parent container a different tag.
For example, here is a tree list showing a group structure with their tags. Note that my tags often have prefixes, such as numbers, which are designed to be sorted alphanumerically in the Tags pane.
```
- House
  - Floor Group                   (untagged, but might be closely represented by tag *folder* `Floor`)
    - Floor Assembly- House
      - Floor Framing Assembly    (tag: 101 Floor Framing)
        - joist object
          - raw geometry
        - girder object
          - raw geometry
      - Floor Sheathing           (tag: 102 Floor Sheathing)
    - Floor Assembly- Porch
      - Floor Framing Assembly    (tag: 101 Floor Framing)
        - joists
        - girders
        - etc.
```

There is a tradeoff between simplicity and flexibility. 

Here are outlines of some heirarchies that I use.  For me, this is mostly about the tags, and grouping is secondary.  I group things as needed, to achieve this heirarchy.

- **A**: Tags the structure by its build state, creating & nesting groups as needed.  This works when the old/new/demolished parts of the building are fairly separate, without too much overlap.  But this is limiting, for example, I wouldn't be able to show ALL proposed elements but only SOME existing elements.
  - build state (`proposed` / `existing` / `demo`)
    - assemblies (`wall assy.` etc)
      - sub-assemblies (`wall framing`, `wall cladding ext.` etc)
  -  
- **B**: 
  - optional `section group` which contains multiple assemblies / groups to be sectioned with one cut (e.g. walls, stairs, columns)
    - assemblies (`floor assy.` etc)
      - build state (`proposed` / `existing` / `demo`)
        - sub-assemblies (`floor framing` etc)

- **C**: Verbose.  Cramming lots of conditions into one tag. Resulting in more flexibility but a lot more tags.
  - assemblies + build state + (`proposed floor assy.` etc)

 Note on sections:
  If it's a simple model, it can work to put sections in a top-level group.  But sometimes I don't want to cut everything in the model -- e.g. cut walls & stairs but not 2D dashes showing objects above the cut.  One option is to make a 'section group' which contains the groups I want to cut (e.g. it contains `walls`, `stairs`, `columns`).  Another, more versatile solution is copying a section and *pasting-in-place* between different groups (e.g. from `proposed` to `existing` or from `wall group` to `column group`).  This is easy enough that I don't worry about sections when choosing a heirarchy. It helps to name sections with a common prefix (e.g. `sec`), to be able to find them quickly via Outliner (e.g. `sec_P1` for all the cut(s) of main level plan views).

--------------

## materials
plugin: [Material Replacer] - requires [TT_Lib²] \
plugin: [Material Tools] - requires [TT_Lib²] \
plugin: [TIG: SKM Tools, Material Tools, and Image Tools] \
plugin: [Eneroth Material Extractor] \
article: [batch convert jpgs to skm (sketchup materials)](https://sites.google.com/site/sagesuwiki/tutorials/plugins/tutorials/batch-convert-jpgs-to-skm)

### basics: nested materials & the *default* material:

The *Default* material is a special material.  It's sort of a blank; a `nil` value for an object's material; an invisible placeholder (that by default displays as white on the front face, and blue on the back face.)

If an entity (group, component, face, etc) contains different materials within its child entities, SketchUp has a way of prioritizing which materials are actually rendered.

If an entity is painted with a material, that material is also rendered on each child entity unless that child entity has non-default material of its own.

In other words, SketchUp prioritizes materials assigned to child entities over materials assigned to parent entities.

Example:  I have roof/ceiling assembly -- a simple solid -- which includes roof, ceiling, and fascia.  I paint the `assembly` entity white, but then open it and paint the individual top roof faces with a shingle material.  This will render the ceiling & fascia as white, and the roof as shingles.

### component materials workflow
If you paint a component, it doesn't apply to that component's copies -- you're painting the instance of the component (its container).  You must go a level deeper.  Here are 2 example heirarchies which let you easily paint all copies of a component in bulk.
- workflow A: *paint the raw geometry*
  - *component* - `default material`
    - *raw geometry* - `your material` (you can quickly paint all faces by holding `shift`, or select multiple faces before painting)
- workflow B: *create a group within the component for the purpose of painting.*
  - *component* - `default material`
    - *group* - `your material`
      - *raw geometry* - `default material`, and optionally individual faces with a unique material.

### misc. Materials tips:

- Sometimes you need to reset numerous entities (groups, components, faces) to the default material.  There are plugins which make this faster -- e.g. Thomthom's *Material Tools*, or *Material Replacer*.
- I will often create a material collection for a project, and make most or all the materials in the model unique to that project.  Materials will be named for their purpose, e.g. `wall- salmon`.  This makes it easy to try out different materials (using Material pane or the *Material Replacer* plugin).

---------------

## Axes & Inference

SketchUp Help Articles:
- [*Adjusting the Drawing Axes*](https://help.sketchup.com/en/sketchup/adjusting-drawing-axes)

**Inference:** SketchUp will try to *infer* what you are trying to do, based on axes, symmetry, and helpful imaginary lines.  Examples: Line tool will snap to lines which are perpindicular or parallel to nearby shapes (and turn pink); the cursor will snap to the midpoint of a line; the cursor will snap to the center of a circle, if you first hover the circle's edge and then move cursor inward.

**Axes:** Axes are an important tool, because they determine Sketchup's tool alignments & influence inference cues. For example, scaling & rotation are aligned with the axes. There are multiple sets of axes within a model: In addition to the model axes (top-level context), each group or component has its own set of axes.

Axes can be adjusted: You can set the origin and the direction of each of the 3 axes.  And they are adjusted per context.  **Axis direction** determines how SketchUp inferences within each group or component, and determines compass alignment: Solid red is north, and solid green is east.  **Axis origin point** affects how entities are imported / pasted, and probably other things.

- axes tool
- align axes (to face)
- reset axes
- extension: [Curic Axes](https://extensions.sketchup.com/extension/3ed1f7d5-2950-49ad-a7c3-3779befffea1/curic-axes)
- extension: [Axes Tools](https://extensions.sketchup.com/extension/446870d8-0755-4d0b-963d-7219ef236c7a/axes-tools)
- extension: [Axes Manager](https://extensions.sketchup.com/extension/13e533c2-ebf7-4d86-805f-59dd2254564b/axes-manager)

-------------

## misc. tips

- You can move a vertex by *selecting none*, then using the move tool on the vertex.  More advanced operations can be achieved with the plugin *Vertex Tools*.
- Keyboard shortcuts can only be set while they are usable.  For example, to assign a shortcut to *Reverse Faces* you must first select a face.
- Painting a component doesn't apply the material to other instances.  So I will often create a group within the component, and apply material to that group.  This way, it is applied to the other components, without needing to paint the raw geometry.
- Fix for disappearing SketchUp windows (*Materials, Entity info*, etc):
  - Activate the dialog, so that it has the focus
  - Hit ALT + SPACE
  - Tap M, then tap any arrow key
  - Now, without clicking, move the mouse around until the dialog reappears on your screen.  Click to place the window.
  - Or try my old [AutoHotkey script](assets/Move_SketchUp_Window.ahk). It's probably made for AHK version 1.

-------------

## techniques

### proxy modeling

- [Video: Sketchup Skill-Builder - proxy with native SU tools](https://youtu.be/2VZj-odqx68)
- [Article: Always Use Proxy Components in Sketchup for Faster Rendering](http://sketchup-ur-space.com/2017/dec/always-use-proxy-components-in-sketchup-for-faster-rendering.html)
- [Fredo Ghost extension](https://sketchucation.com/plugin/2191-fredoghost)

-------------------

## My to do

- Learn:
  - Outliner: recently added features.  Try using it for visibility control.
  - Locking objects
  - Classifier / IFC
  - Proxy modelling
  - Sandbox
  - quads & subdivision
- Clean up & standardize:
  - Components collections
  - Styles collections
  - Materials collections
  - Templates
  - Folder structure
  - Tags... print my standards, and look into tag management plugins
- Plugins:
  - Make custom version of *Auto-Invisible Layers*, to make it enabled upon startup.


<!-- Page Links ---------->

<!-- Misc -->

[D.R.Y.]: https://en.wikipedia.org/wiki/Don%27t_repeat_yourself "Don't repeat yourself: Every piece of knowledge must have a single, unambiguous, authoritative representation within a system..."
[SharpKeys]: https://www.randyrants.com/category/sharpkeys/

<!-- Extensions -->

[TT_Lib²]: https://sketchucation.com/plugin/726-tt_lib
[LibFredo]: https://sketchucation.com/plugin/903-libfredo6

[Animator]: https://sketchucation.com/plugin/1839-animator
[Architect Tools]: https://extensions.sketchup.com/extension/0e2b5a47-add9-47c7-894b-9be1e046cfba/architect-tools
[Archiver]: https://sketchucation.com/plugin/841-archiver
[Attribute Inspector]: https://extensions.sketchup.com/extension/2c7d7254-76eb-40af-9897-bc7d16b42fb6/attribute-inspector]
[Auto Invisible Layer]: https://extensions.sketchup.com/extension/5fe151f4-aefe-4dcd-b37e-c0766caaa6e4/auto-invisible-layer
[Axes Tools]: https://extensions.sketchup.com/extension/446870d8-0755-4d0b-963d-7219ef236c7a/axes-tools
[Bezier Curve Tool]: https://extensions.sketchup.com/extension/8b58920d-0923-42f8-9c72-e09f2bba125e/bezier-curve-tool
[CleanUp³]: https://extensions.sketchup.com/extension/046175e5-a87a-4254-9329-1accc37a5e21/cleanup%C2%B3
[ClothWorks]: https://sketchucation.com/plugin/2053-clothworks
[Component Properties]: https://extensions.sketchup.com/extension/248d1f45-2989-49f7-ac15-0b14129c6973/component-properties
[Double-Cut]: https://mindsightstudios.com/double-cut/
[Edge Tools]: https://extensions.sketchup.com/extension/52ab7474-469f-4a62-baa0-63c2b6390373/edge-tools
[Eneroth Component Replacer]: https://extensions.sketchup.com/extension/9296041e-0a67-4cf0-a520-13de000e20b8/eneroth-component-replacer
[Eneroth Fractal Terrain Eroder]: https://extensions.sketchup.com/extension/a609a3c3-4066-42b9-98aa-9d4ecdb19287/eneroth-fractal-terrain-eroder
[Eneroth Layer Painter]: https://extensions.sketchup.com/extension/66564e2c-9c36-4006-aafc-7da918665e95/eneroth-layer-painter
[Eneroth Legacy Save]: https://extensions.sketchup.com/extension/32472fc9-06d1-49de-aa56-52570114c2c7/eneroth-legacy-save
[Eneroth Material Extractor]: https://extensions.sketchup.com/extension/75086cf5-9898-49eb-a005-4ebc89245be4/eneroth-material-extractor
[Eneroth Pipe]: https://extensions.sketchup.com/extension/80637e4a-8f8a-438f-85f0-da53a69314d8/eneroth-pipe
[Eneroth Solid Tools]: https://extensions.sketchup.com/extension/b1fc993f-42ac-44ab-8655-3037ccdfc36e/eneroth-solid-tools
[Eneroth Swift Layer Visibility Control]: https://extensions.sketchup.com/extension/cfa47a7e-1d7e-4899-a225-32e1399c44cd/eneroth-swift-layer-visibility-control
[Eneroth Texture Positioning Tools]: https://extensions.sketchup.com/extension/9d566697-9b02-4f3c-b769-9e1c57af7750/eneroth-texture-positioning-tools
[Eneroth Tool Memory]: https://extensions.sketchup.com/extension/fb385104-103e-4176-b1e5-92e114bad57a/eneroth-tool-memory
[Eneroth Visual Merge]: https://extensions.sketchup.com/extension/6b8d9d0f-3f8b-4101-9e0f-37dbf4372339/eneroth-visual-merge
[Face Centroid and Area Properties]: https://extensions.sketchup.com/extension/fef39953-7374-48aa-812d-c0df1c24870e/face-centroid-and-area-properties
[FredoCorner]: https://sketchucation.com/plugin/2120-fredocorner
[FredoScale]: https://sketchucation.com/plugin/1169-fredoscale
[FredoGhost]: https://sketchucation.com/plugin/2191-fredoghost
[Joint Push Pull]: https://sketchucation.com/plugin/715-jointpushpull
[HouseBuilder]: http://sketchucation.com/forums/viewtopic.php?p=564448#p564448
[Material Replacer]: https://extensions.sketchup.com/extension/4137f7fc-a81f-4ef9-9ec8-b6dd8a0d9086/material-replacer
[Material Resizer]: https://extensions.sketchup.com/extension/77b60f26-2352-407e-8c0c-9862c9716111/material-resizer
[Material Tools]: https://extensions.sketchup.com/extension/5e8c8cb5-63d1-4b9f-a574-5faede20bdc6/material-tools
[Pipe Along Path]: https://sketchucation.com/pluginstore?pln=PipeAlongPath
[Profile Builder]: https://profilebuilder4sketchup.com
[Repeat Place Component]: https://extensions.sketchup.com/extension/8c2e0dbd-98df-44a1-abde-148c1a6d0940/repeat-place-component
[RoundCorner]: https://sketchucation.com/plugin/1173-roundcorner
[Quad Face Tools]: https://extensions.sketchup.com/extension/c59a652b-cc23-481e-8d2f-b56fabd2495a/quadface-tools
[Selection Memory]: https://extensions.sketchup.com/extension/6fa33ac4-2aa7-443b-aa4b-a211d7af8b03/selection-memory
[Selection Toys]: https://extensions.sketchup.com/extension/c9266b2c-0b55-4d21-a0a4-72e23b8a0fb4/selection-toys
[SketchUp Shapes]: https://extensions.sketchup.com/extension/5b95d769-4696-4312-a732-e7950dd5ddfb/shapes
[Solid Inspector²]: https://extensions.sketchup.com/extension/aad4e5d9-7115-4cac-9b75-750ed0902732/solid-inspector%C2%B2
[Split Tools]: https://sketchucation.com/pluginstore?pln=TIG_splitTOOLS
[SubD]: https://extensions.sketchup.com/extension/c7107572-fc88-4588-88f9-a8f0deec3bd1/sub-d
[TIG: SKM Tools, Material Tools, and Image Tools]: https://sketchucation.com/pluginstore?pln=SKMtools
[TrueBend]: https://extensions.sketchup.com/extension/c9135b56-4492-449e-ac63-8c26b734ba39/truebend
[Turn Off Layer In All Scenes (TOLIAS)]: https://sketchucation.com/forums/viewtopic.php?f=80&t=66243
[Unwrap and Flatten Faces]: https://extensions.sketchup.com/extension/479b4faf-433a-40ab-8727-1c34dee1c829/flatten-faces