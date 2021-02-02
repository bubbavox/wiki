
# SketchUp + Ruby     <!-- omit in toc -->


A place to put the things I learn.

related pages: [SketchUp](sketchup.md), [Ruby](ruby.md), [VS Code](vscode.md)

## contents:          <!-- omit in toc -->

+ [docs](#docs)
+ [hubs](#hubs)
+ [development tools](#development-tools)
+ [libraries and such](#libraries-and-such)
+ [exemplary code](#exemplary-code)
+ [unsorted info](#unsorted-info)
+ [setup](#setup)
+ [UX](#ux)
+ [tutorials](#tutorials)
+ [my to do](#my-to-do)
+ [my setup](#my-setup)
+ [other stuff](#other-stuff)

--------------------
## docs

- [SketchUp Developer] homepage
- [SketchUp Ruby API]:
  - [Class: SketchUp Extension](https://ruby.sketchup.com/SketchupExtension.html)
- Ruby 2.7.1:
  - [ruby-doc.org]
  - [RubyDoc.info]
  - [RubyAPI.org]
- [Ruby Style Guide] (rubocop)

SU version  | Ruby version  | major changes
------------|---------------|---------------
2021        | **2.7.1**     | tag folders; live components; PreDesign; .skp rebuild
2020.2      | 2.5.5         | Ruby and C Exchange API
2020.1      | 2.5.5         | `#weld`
2020.0      | 2.5.5         | 
2019.2      | **2.5.5**     | removed depr. C++ API
2019        | **2.5.1**     |
2018        | 2.2.4         | Layout Ruby API (wrapped C API); `#send_to_layout`; `ImageRep`; Adv. Attributes
2017        | **2.2.4**     | `WebDialog` --> `HtmlDialog`; new API docs
2016        | 2.0.0         | `.rbs` --> `.rbe`
2015        | 2.0.0         | SU is now 64-bit; new LayOut C API
2014        | **2.0.0**     | 

See also: [SketchUp Ruby API release notes](https://ruby.sketchup.com/file.ReleaseNotes.html).

--------------------
## hubs

- [SU forums: Developers]
- [SU forums: Extensions]
- [SU forums: Happenings]
- [SketchUp Developer]
- [GitHub / SketchUp]
- [GitHub / thomthom]
- [TT's blog](http://www.thomthom.net/thoughts/)
- [TT's old blog (still useful)](http://www.thomthom.net/blog/)
- [GitHub / Eneroth3]

--------------------
## development tools

- [VSCode Project for SketchUp Extension Development] (SU) - project template
- [RuboCop SketchUp] (SU) - *"...test against our Extension Warehouse technical requirements and other pitfalls."*
- [TestUp] (SU) - *A GUI wrapper for running Minitest in SketchUp*
- [SpeedUp] (SU) - a profiling tool for SketchUp Ruby extensions. It wraps [Benchmark] and the [RubyProf] gem.
- [Ruby API stubs] (SU)
- [Skippy] (TT) - *CLI which aims to automate common developer tasks for SketchUp Ruby extension development.*
- [SketchUp Bridge] (aerilius) - some UX stuff, idk
- [Script Runner] (Ene) - *"Run Ruby script by dropping it in SketchUp."*

---------------------
## libraries and such

- TTLib2 - [SEW](https://extensions.sketchup.com/extension/c03a2b93-3365-4ef1-95f4-f35158757622/tt-lib) / [code](https://bitbucket.org/thomthom/tt-library-2) / [docs](http://www.thomthom.net/software/sketchup/tt_lib2/doc/)
- TTLib3 - [code](https://github.com/thomthom/tt-lib) / [docs](https://www.rubydoc.info/github/thomthom/tt-lib) - WIP? - "*Until skippy is more mature, this library can be used as a resource and a reference point for small utility classes and methods useful in common SketchUp extension development.*"
- [SketchUp Units and Locale helper] (TT) - *mini-library.. to provide easy conversions of Area and Volume within SketchUp as well as dealing with user environment locale.*
- [View-lib] (Eneroth) - *Wrapper for SketchUp view and camera functionality.*
- [Inference Lock Lib] (Eneroth) - *Inference locking for custom.. tools to match behavior of native tools.*
- [Ordbok-lib] (Eneroth) - localization library
- [Dialogs-lib] (Eneroth) - a lightweight, easy to use UX library for HtmlDialog, purely using web technologies, no Ruby, to allow you to easily implement it existing dialogs.
- [SketchUp Community Library] (Eneroth) - early work in progress

--------------------
## exemplary code

SU code that is open-source and worth a look -- perhaps well-commented, or proper & up-to-date, or just plain tootin' interesting!

- SketchUp/ [HTMLDialog Examples]
- SketchUp/ [SketchUp-STL] - for 3D printing, mainly
- ThomThom/ [CleanUp3]
- ThomThom/ [Selection Toys]
- ThomThom/ [Solid Inspector 3]
- ThomThom/ [Component Properties]
- ThomThom/ [SuperGlue]
- ThomThom/ [Solid Inspector 2]
- Eneroth3/ [Eneroth Solid Tools] - *Solid tools designed to feel native to SketchUp.*
- Eneroth3/ [Legacy Save] - *Quickly saves model to a legacy Sketchup format.*
- Eneroth3/ [Eneroth Scene Visibility] - *Control entity visibility on a per scene basis. Useful in SketchUp 2020 and later where scenes store hidden states also in nested objects.*
- Eneroth3/ [Eneroth Viewport Resizer 2] - Remake of a 2014 extension
- Eneroth3/ [Eneroth Random Selection] - *"This extension was originally planned to be a Ruby Extension example but turned out to also be a rather useful little extension."*
- Eneroth3/ [Eneroth Component to Group]
- Eneroth3/ [Script Runner] - *"Run Ruby script by dropping it in SketchUp."*


--------------------
## unsorted info

- [SketchUp Ruby API] index - lots of useful info.
- [Ruby Learning Resources] @ SU Forums (DanRathbun)
- [SketchUp Sage]
- ThomThom:

  - [TTLib2 docs](http://www.thomthom.net/software/sketchup/tt_lib2/doc/) (current?)
  - [TTLib3 @ github](https://github.com/thomthom/tt-lib) 
  - [TTLib3 docs](https://www.rubydoc.info/github/thomthom/tt-lib/)
- http://www.thomthom.net/thoughts/2012/08/dealing-with-units-in-sketchup/
- [SU forums: frozen strings, encoding, _FILE_, etc](https://forums.sketchup.com/t/force-encoding-when-using-frozen-string-literals/109362)
- [SU forums: Why frozen string literals?](https://forums.sketchup.com/t/why-frozen-string-literals/123843)
- [Golden Rules] of SketchUp Development - 2012 article by ThomThom

-----------------
## setup

- in SketchUp:
  - Ruby Code Editor - [manual](https://alexschreyer.net/projects/sketchup-ruby-code-editor/ruby-code-editor-manual/) - [website](https://alexschreyer.net/projects/sketchup-ruby-code-editor/) - [SEW](https://extensions.sketchup.com/extension/07d36510-4de5-49c5-ba63-5cf254c98b2b/ruby-code-editor)
  - Ruby Console+ - [github](https://github.com/aerilius/sketchup-console-plus) - [SEW](https://extensions.sketchup.com/extension/b3865233-5e84-4f7e-8342-517aca889225/Ruby%20Console+)

- in VSCode:

- other: 

------------------
## UX

In 2017, [HTMLDialog] replaced [WebDialog]. More info [here](https://github.com/aerilius/sketchup-bridge).

- [Module:UI] docs
- [HTMLDialog examples]
- [SketchUp Bridge] (aerilius) -- good reading on the homepage
- Old [WebDialog] stuff:
  - [WebDialogs - The Lost Manual (TT)](https://github.com/thomthom/sketchup-webdialogs-the-lost-manual)
  - [SKUI (TT)](https://github.com/thomthom/SKUI) (abandoned?) - *... framework... to provide Ruby wrapper classes to manipulate GUI control elements in SketchUp's UI::WebDialog API.*

## tutorials

  - [Scripting Tutorials](https://sketchupfordesign.com/sketchup-tutorials-news/tutorials/scripting/) at [Sketchup For Design](https://sketchupfordesign.com/) (Alex Schreyer)

--------------------
## my to do

- set up for SU tutorials
- set up for debugging / testing:
  - learn [Minitest] - tutorial [here](https://semaphoreci.com/community/tutorials/getting-started-with-minitest)
  - start using [TestUp]
  - try [SpeedUp]
- set up auto-completion / intellisense / etc
- set up local docs repo (ruby stdlib + sketchup API) w/ dark theme, cross-platform viewing
- advanced: learn automatic documentation via YARD / rdoc


-------------------
## my setup 
...

-------------------
## other stuff

-------------------
An extension example that *plays nice* (outdated? from TT's 2012 [Golden Rules] article):
  ```ruby
  require 'sketchup.rb'
  module NN_MyOwnUniqueNamespace
    unless file_loaded?( __FILE__ )
      menu = UI.menu( 'Plugins' )
      menu.add_item( 'Hello World' ) { self.hello_world }
    end
    # Use instance variables inside modules instead of global variables.
    @my_variable = 'Hi there! :)'
    def self.hello_world
      puts @my_variable
    end
    file_loaded( __FILE__ )
  end # module
  ```
See DanRathbun's [comment](https://forums.sketchup.com/t/su-development-workflow-environment/151298/2?u=bubbavox) on the above code: *"Many of us recommend using a local module `@loaded` var to determine whether to load UI elements, rather than the slow and clunky `file_loaded()` and `file_loaded?()` methods defined in "sketchup.rb".
(String comparison is slow in Ruby, and those methods use a global shared array in which simple file names might clash. Long absolute pathnames are going to slow the startup cycle.)"*

--------------------

<!-- LINKS --------->

<!-- docs -->
[ruby-doc.org]: https://ruby-doc.org/core-2.7.1/
[RubyDoc.info]: https://rubydoc.info/stdlib/core/
[RubyAPI.org]: https://rubyapi.org/2.7
[devdocs.io]: https://devdocs.io/ruby~2.7/
[Ruby Style Guide]: https://github.com/rubocop-hq/ruby-style-guide

[SketchUp Ruby API]: https://ruby.sketchup.com/
[WebDialog]: https://ruby.sketchup.com/UI/WebDialog.html
[Module:UI]: https://ruby.sketchup.com/UI
[HTMLDialog]: https://ruby.sketchup.com/UI/HtmlDialog.html
[WebDialog]: https://ruby.sketchup.com/UI/WebDialog.html

<!-- hubs -->
[GitHub / SketchUp]: https://github.com/SketchUp/
[GitHub / ThomThom]: https://github.com/thomthom/
[GitHub / Eneroth3]: https://github.com/Eneroth3
[SketchUp Developer]: (https://developer.sketchup.com/)
[SU forums: Developers]: https://forums.sketchup.com/c/developers
[SU forums: Extensions]: https://forums.sketchup.com/c/extensions
[SU forums: Happenings]: https://forums.sketchup.com/c/happenings

<!-- dev tools -->
[VSCode Project for SketchUp Extension Development]: https://github.com/SketchUp/sketchup-extension-vscode-project
[RuboCop SketchUp]: https://github.com/SketchUp/rubocop-sketchup
[TestUp]: https://github.com/SketchUp/testup-2
[SpeedUp]: https://github.com/SketchUp/speedup
[Ruby API stubs]: https://github.com/SketchUp/ruby-api-stubs
[Skippy]: https://github.com/thomthom/skippy
[SketchUp Bridge]: https://github.com/aerilius/sketchup-bridge

<!-- libraries and such -->
[SketchUp Units and Locale Helper]: https://github.com/thomthom/SketchUp-Units-and-Locale-Helper
[Inference Lock Lib]: https://github.com/Eneroth3/inference-lock-lib
[View-lib]: https://github.com/Eneroth3/view-lib
[Ordbok-lib]: https://github.com/Eneroth3/ordbok-lib
[Dialogs-lib]: https://github.com/Eneroth3/dialogs-lib
[Scale-lib]: https://github.com/Eneroth3/scale-lib
[SketchUp Community Library]: https://github.com/Eneroth3/sketchup-community-lib

<!-- learning resources -->
[HTMLDialog Examples]: https://github.com/SketchUp/htmldialog-examples
[SketchUp Sage]: https://sites.google.com/site/sketchupsage/
[Ruby Learning Resources]: https://forums.sketchup.com/t/ruby-learning-resources-wikilists/22861

<!-- extensions -->
[CleanUp3]: https://extensions.sketchup.com/extension/046175e5-a87a-4254-9329-1accc37a5e21/cleanup%C2%B3
[Solid Inspector 2]: https://extensions.sketchup.com/extension/aad4e5d9-7115-4cac-9b75-750ed0902732/solid-inspector%C2%B2
[Selection Toys]: https://extensions.sketchup.com/extension/c9266b2c-0b55-4d21-a0a4-72e23b8a0fb4/selection-toys
[Component Properties]: https://extensions.sketchup.com/extension/248d1f45-2989-49f7-ac15-0b14129c6973/component-properties
[SuperGlue]: https://extensions.sketchup.com/extension/0c452629-3893-46f7-8805-004038fc5d24/superglue
[SketchUp-STL]: https://github.com/SketchUp/sketchup-stl
[View-lib]: https://github.com/Eneroth3/view-lib
[Eneroth Solid Tools]: https://github.com/Eneroth3/eneroth-solid-tools
[Eneroth Scene Visibility]: https://github.com/Eneroth3/eneroth-scene-visibility
[Legacy Save]: https://github.com/Eneroth3/legacy-save
[Eneroth Viewport Resizer 2]: https://github.com/Eneroth3/Viewport-Resizer-2
[Eneroth Random Selection]: https://github.com/Eneroth3/RandomSelection
[Eneroth Component to Group]: https://github.com/Eneroth3/component-to-group
[Script Runner]: https://github.com/Eneroth3/sketchup-script-runner

<!-- other -->
[Golden Rules]:http://www.thomthom.net/thoughts/2012/01/golden-rules-of-sketchup-plugin-development/
[Minitest]: https://github.com/seattlerb/minitest
[Benchmark]: https://rubydoc.info/stdlib/benchmark/Benchmark
[RubyProf]: https://ruby-prof.github.io/

