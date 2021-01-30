---
modified: 2021-01-25T13:07:46-05:00
---

# SketchUp + Ruby

SU 2021.0.1 uses Ruby 2.7.1

## docs:
- Ruby Core 2.7.1:
  - [rubydoc.info]
  - [devdocs.io]
  - [rubyapi.org]
- SketchUp Ruby API:
  - [homepage](https://ruby.sketchup.com/) - incl. some basic help info
  - [Class: SketchUp Extension](https://ruby.sketchup.com/SketchupExtension.html) - incl. some info @ dir. structures, plugin loading...
  - [SketchUp @ GitHub](https://github.com/SketchUp)
  - [SketchUp Developer homepage](https://developer.sketchup.com/)

## unsorted info:

  - ThomThom:
    - [github](https://github.com/thomthom)
    - [blog](http://www.thomthom.net/thoughts/)
    - [old blog (still useful)](http://www.thomthom.net/blog/)
    - [TTLib2 docs](http://www.thomthom.net/software/sketchup/tt_lib2/doc/) (current?)
    - [TTLib3 @ github](https://github.com/thomthom/tt-lib) - WIP? - *Until skippy is more mature, this library can be used as a resource and a reference point for small utility classes and methods useful in common SketchUp extension development.*
    - [TTLib3 docs](https://www.rubydoc.info/github/thomthom/tt-lib/)
    - [Skippy]
  - http://www.thomthom.net/thoughts/2012/08/dealing-with-units-in-sketchup/
  - [SU forums: frozen strings, encoding, _FILE_, etc](https://forums.sketchup.com/t/force-encoding-when-using-frozen-string-literals/109362)
  - [SU forums: Why frozen string literals?](https://forums.sketchup.com/t/why-frozen-string-literals/123843/9)

--------------------
## dev environment:
- [SketchUp Ruby API](https://ruby.sketchup.com/) index - lots of useful info.
- SU tools:
  - Ruby Code Editor - [manual](https://alexschreyer.net/projects/sketchup-ruby-code-editor/ruby-code-editor-manual/) - [website](https://alexschreyer.net/projects/sketchup-ruby-code-editor/) - [SEW](https://extensions.sketchup.com/extension/07d36510-4de5-49c5-ba63-5cf254c98b2b/ruby-code-editor)
  - Ruby Console+ - [github](https://github.com/aerilius/sketchup-console-plus) - [SEW](https://extensions.sketchup.com/extension/b3865233-5e84-4f7e-8342-517aca889225/Ruby%20Console+)
- Code:
  - [TestUp (GH)](https://github.com/SketchUp/testup-2) - *A GUI wrapper for running Minitest in SketchUp*
  - [SketchUp Units and Locale helper (GH)](https://github.com/thomthom/SketchUp-Units-and-Locale-Helper) - *mini-library.. to provide easy conversions of Area and Volume within SketchUp as well as dealing with user environment locale.*

- VSCode:
  - [VS code boiler plate example project for SU extension development](https://github.com/SketchUp/sketchup-extension-vscode-project)

--------------------
## tutorials:

  - [Scripting Tutorials](https://sketchupfordesign.com/sketchup-tutorials-news/tutorials/scripting/) at [Sketchup For Design](https://sketchupfordesign.com/) (Alex Schreyer)
  - [Golden Rules] of SketchUp Development - 2012 article by ThomThom

## GUI:

In 2017, [HTMLDialog] replaced [WebDialog]. More info [here](https://github.com/aerilius/sketchup-bridge).

- [HTMLDialog docs](https://ruby.sketchup.com/UI/HtmlDialog.html)
- [HTMLDialog examples](https://github.com/SketchUp/htmldialog-examples)
- Old WebDialog stuff:
  - WebDialog
  - [WebDialogs - The Lost Manual (TT)](https://github.com/thomthom/sketchup-webdialogs-the-lost-manual)
  - [SKUI (TT)](https://github.com/thomthom/SKUI) (abandoned?) - *... framework... to provide Ruby wrapper classes to manipulate GUI control elements in SketchUp's UI::WebDialog API.*
  - [SketchUp Bridge (aerilius)](https://github.com/aerilius/sketchup-bridge)

## to do:
- create custom rdocs for SU dev:
  - Ruby 2.7.1
  - SU Ruby API
  - etc
- learn testing:
  - [Minitest] - [tutorial](https://semaphoreci.com/community/tutorials/getting-started-with-minitest)
  - [TestUp]
  - [SpeedUp]- a profiling tool for SketchUp Ruby extensions. It wraps [Benchmark] and the [RubyProf] gem.


An extension example that *plays nice* (from TT's 2012 [Golden Rules] article):
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





[rubydoc.info]:https://ruby-doc.org/core-2.7.1/
[rubydoc.info]:https://rubydoc.info/stdlib/core/
[rubyapi.org]:https://rubyapi.org/2.7
[devdocs.io]:https://devdocs.io/ruby~2.7/

[WebDialog]:https://ruby.sketchup.com/UI/WebDialog.html
[HTMLDialog]:https://ruby.sketchup.com/UI/HtmlDialog.html

[Minitest]:https://github.com/seattlerb/minitest
[TestUp]:https://github.com/SketchUp/testup-2
[SpeedUp]:https://github.com/SketchUp/speedup
[Skippy]:https://github.com/thomthom/skippy
[Benchmark]:https://rubydoc.info/stdlib/benchmark/Benchmark
[RubyProf]:https://ruby-prof.github.io/

[Golden Rules]:http://www.thomthom.net/thoughts/2012/01/golden-rules-of-sketchup-plugin-development/