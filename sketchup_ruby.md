
# SketchUp + Ruby     <!-- omit in toc -->

related: [SketchUp](sketchup.md), [Ruby](ruby.md), [VS Code](vscode.md)

## contents:          <!-- omit in toc -->

+ [docs](#docs)
+ [development tools](#development-tools)
+ [unsorted info](#unsorted-info)
+ [setup](#setup)
+ [tutorials](#tutorials)
+ [UI](#ui)
+ [my to do](#my-to-do)
+ [my setup](#my-setup)
+ [other stuff](#other-stuff)

--------------------
## docs

- [SketchUp Developer homepage](https://developer.sketchup.com/)
- [SketchUp Ruby API]:
  - [Class: SketchUp Extension](https://ruby.sketchup.com/SketchupExtension.html)
- Ruby 2.7.1:
  - [ruby-doc.org]
  - [RubyDoc.info]
  - [RubyAPI.org]
- [Ruby Style Guide] (rubocop)

SU version  | Ruby version  | notes
------------|---------------|-------
2021        | 2.7.1         | 
2019.2      | 2.5.5         | removed depr. C++ API
2019        | 2.5.1         |
2018        |               | new Layout Ruby API (wrapped C API); new `Sketchup.send_to_layout`
2017        | 2.2.4         | WebDialog --> HtmlDialog; new API docs
2016        |               | .rbs --> .rbe
2015        |               | SU is now 64-bit; new LayOut C API
2014        | 2.0.0         | 

See also: [SketchUp Ruby API release notes](https://ruby.sketchup.com/file.ReleaseNotes.html).

--------------------
## development tools

- [GitHub / SketchUp]
  - [VSCode Project for SketchUp Extension Development]: project template
  - [RuboCop SketchUp] - *"...test against our Extension Warehouse technical requirements and other pitfalls."*
  - [TestUp] - *A GUI wrapper for running Minitest in SketchUp*
  - [SpeedUp]- a profiling tool for SketchUp Ruby extensions. It wraps [Benchmark] and the [RubyProf] gem.
- [GitHub / thomthom]
  - [Skippy]
  - [SketchUp Units and Locale helper] - *mini-library.. to provide easy conversions of Area and Volume within SketchUp as well as dealing with user environment locale.*
- [GitHub / Eneroth3]
  - [SketchUp Community Library] (Beta) - early work in progress
- [SketchUp Bridge]

--------------------
## unsorted info

- [SketchUp Ruby API] index - lots of useful info.
- [Ruby Learning Resources] @ SU Forums (DanRathbun)
- [SketchUp Sage]
- ThomThom:
  - [github](https://github.com/thomthom)
  - [blog](http://www.thomthom.net/thoughts/)
  - [old blog (still useful)](http://www.thomthom.net/blog/)
  - [TTLib2 docs](http://www.thomthom.net/software/sketchup/tt_lib2/doc/) (current?)
  - [TTLib3 @ github](https://github.com/thomthom/tt-lib) - WIP? - *Until skippy is more mature, this library can be used as a resource and a reference point for small utility classes and methods useful in common SketchUp extension development.*
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
## UI

In 2017, [HTMLDialog] replaced [WebDialog]. More info [here](https://github.com/aerilius/sketchup-bridge).

- [Module:UI] docs
- [HTMLDialog examples]
- [SketchUp Bridge] (aerilius) -- good reading on the homepage
- Old [WebDialog] stuff:
  - [WebDialogs - The Lost Manual (TT)](https://github.com/thomthom/sketchup-webdialogs-the-lost-manual)
  - [SKUI (TT)](https://github.com/thomthom/SKUI) (abandoned?) - *... framework... to provide Ruby wrapper classes to manipulate GUI control elements in SketchUp's UI::WebDialog API.*

--------------------
## exemplary code

Code that is well-commented, canonical, interesting, or otherwise worth a look... ideally it has all of these attributes.

- [HTMLDialog Examples] (SketchUp)
- [SketchUp Community Library] (Eneroth3)
- [SketchUp-STL] (SketchUp) - for 3D printing, mainly
- [View-lib] - *Wrapper for SketchUp view and camera functionality.*
--------------------
## tutorials

  - [Scripting Tutorials](https://sketchupfordesign.com/sketchup-tutorials-news/tutorials/scripting/) at [Sketchup For Design](https://sketchupfordesign.com/) (Alex Schreyer)

--------------------
## my to do

- set up for SU tutorials
- set up for debugging / testing:
  - learn [Minitest] - tutorial [here](https://semaphoreci.com/community/tutorials/getting-started-with-minitest)
  - [TestUp]
  - [SpeedUp]
- set up local docs repo (ruby stdlib + sketchup API) w/ dark theme, cross-platform viewing
- set up auto-completion / intellisense / etc

-------------------
## my setup 
...

-------------------
## other stuff

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
See DanRathbun's [comment](https://forums.sketchup.com/t/su-development-workflow-environment/151298/2?u=bubbavox) on the above code: *Many of us recommend using a local module `@loaded` var to determine whether to load UI elements, rather than the slow and clunky `file_loaded()` and `file_loaded?()` methods defined in "sketchup.rb".
(String comparison is slow in Ruby, and those methods use a global shared array in which simple file names might clash. Long absolute pathnames are going to slow the startup cycle.)*



<!-- LINKS --------->          <!-- no parentheses -->

<!-- docs -->
[ruby-doc.org]:https://ruby-doc.org/core-2.7.1/
[RubyDoc.info]:https://rubydoc.info/stdlib/core/
[RubyAPI.org]:https://rubyapi.org/2.7
[devdocs.io]:https://devdocs.io/ruby~2.7/
[Ruby Style Guide]:https://github.com/rubocop-hq/ruby-style-guide

[SketchUp Ruby API]:https://ruby.sketchup.com/
[WebDialog]:https://ruby.sketchup.com/UI/WebDialog.html
[Module:UI]:https://ruby.sketchup.com/UI
[HTMLDialog]:https://ruby.sketchup.com/UI/HtmlDialog.html
[WebDialog]:https://ruby.sketchup.com/UI/WebDialog.html


<!-- dev resources -->
[GitHub / SketchUp]:https://github.com/SketchUp/
  [VSCode Project for SketchUp Extension Development]:https://github.com/SketchUp/sketchup-extension-vscode-project
  [RuboCop SketchUp]: https://github.com/SketchUp/rubocop-sketchup
  [TestUp]:https://github.com/SketchUp/testup-2
  [SpeedUp]:https://github.com/SketchUp/speedup
[GitHub / ThomThom]:https://github.com/thomthom/
  [SketchUp Units and Locale Helper]:https://github.com/thomthom/SketchUp-Units-and-Locale-Helper
  [Skippy]:https://github.com/thomthom/skippy
[GitHub / Eneroth3]:https://github.com/Eneroth3
  [SketchUp Community Library]:https://github.com/Eneroth3/sketchup-community-lib
[SketchUp Bridge]:https://github.com/aerilius/sketchup-bridge

[Minitest]:https://github.com/seattlerb/minitest
[Benchmark]:https://rubydoc.info/stdlib/benchmark/Benchmark
[RubyProf]:https://ruby-prof.github.io/


<!-- learning resources -->
[HTMLDialog Examples]:https://github.com/SketchUp/htmldialog-examples
[SketchUp Sage]:https://sites.google.com/site/sketchupsage/
[Ruby Learning Resources]:https://forums.sketchup.com/t/ruby-learning-resources-wikilists/22861

<!-- extensions -->
[SketchUp-STL]:https://github.com/SketchUp/sketchup-stl
[View-lib]:https://github.com/Eneroth3/view-lib

<!-- other -->
[Golden Rules]:http://www.thomthom.net/thoughts/2012/01/golden-rules-of-sketchup-plugin-development/
