
# SketchUp + Ruby     <!-- omit in toc -->

An amateur's compendium...

related pages: [SketchUp](sketchup.md), [Ruby](ruby.md), [VS Code](vscode.md)

## Contents:          <!-- omit in toc -->

+ [Docs](#docs)
+ [Hubs](#hubs)
+ [Dev tools](#dev-tools)
+ [Libraries and such](#libraries-and-such)
+ [Exemplary code](#exemplary-code)
+ [UX](#ux)
+ [Tutorials](#tutorials)
+ [My to do](#my-to-do)
+ [My setup log](#my-setup-log)
+ [Unsorted info](#unsorted-info)

--------------------
## Docs

- **Ruby docs:**
  - core 2.7.1: [RubyDoc.info] / [RubyAPI.org] / [ruby-doc.org]
  - [Ruby Style Guide] (rubocop)
  - [rubyide docs]
  - RubyGems - [docs](http://docs.seattlerb.org/rubygems/) / [guides](https://guides.rubygems.org/)
  - [Ruby QuickRef]
- **SketchUp docs:**
  - [SketchUp Ruby API]:
    - [Class: SketchUpExtension](https://ruby.sketchup.com/SketchupExtension.html)
  - [Ruby API tutorials Wiki]
  - [RuboCop SketchUp](https://rubocop-sketchup.readthedocs.io/en/stable/)
  - [SketchUp YARD template]
  - [Ruby API Class diagram] (date unknown)
  - [PickHelper: A Visual Guide] (ThomThom 2013)
  - [WebDialogs - The Lost Manual] (ThomThom 2013)
  - [SketchUp Ruby API release notes](https://ruby.sketchup.com/file.ReleaseNotes.html)
- [VS Code docs]

<details>
  <summary>SU / Ruby version history - click to expand </summary>

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

</details>

--------------------
## Hubs

- [SU forums: Developers]
- [SU forums: Extensions]
- [SU forums: Happenings]
- [SketchUp Developer]
- [Sketchucation Dev Forums]
- [GitHub / SketchUp]
- [GitHub / thomthom]
- [TT's blog](http://www.thomthom.net/thoughts/)
- [TT's old blog (still useful)](http://www.thomthom.net/blog/)
- [GitHub / Eneroth3]
- [Sketchup For Design] (Alex Schreyer)

--------------------
## Dev tools

see also [Ruby dev tools](ruby.md#dev-tools)

- [SketchUp Ruby Debugger] (SU) - for SketchUp 2014 and later
- [VSCode Project for SketchUp Extension Development] (SU) - project template
- [RuboCop SketchUp] (SU) - *"...test against our Extension Warehouse technical requirements and other pitfalls."*
- [TestUp] (SU) - *A GUI wrapper for running Minitest in SketchUp*
- [SpeedUp] (SU) - a profiling tool for SketchUp Ruby extensions. It wraps [Benchmark] and the [RubyProf] gem.
- [Ruby API stubs] (SU)
- [Skippy] (TT) - *CLI which aims to automate common developer tasks for SketchUp Ruby extension development.*
- [SketchUp Bridge] (aerilius) - some UX stuff, idk
- [Script Runner] (Ene) - *"Run Ruby script by dropping it in SketchUp."*
- [SketchUp YARD template] (SU)
- [Transformation Inspector] (TT)
- [SketchUp Attribute Helper] (SU)
- Ruby Code Editor - [manual](https://alexschreyer.net/projects/sketchup-ruby-code-editor/ruby-code-editor-manual/) - [website](https://alexschreyer.net/projects/sketchup-ruby-code-editor/) - [SEW](https://extensions.sketchup.com/extension/07d36510-4de5-49c5-ba63-5cf254c98b2b/ruby-code-editor)
- Ruby Console+ - [github](https://github.com/aerilius/sketchup-console-plus) - [SEW](https://extensions.sketchup.com/extension/b3865233-5e84-4f7e-8342-517aca889225/Ruby%20Console+)


---------------------
## Libraries and such

- TTLib2 - [SEW](https://extensions.sketchup.com/extension/c03a2b93-3365-4ef1-95f4-f35158757622/tt-lib) / [code](https://bitbucket.org/thomthom/tt-library-2) / [docs](http://www.thomthom.net/software/sketchup/tt_lib2/doc/)
- TTLib3 - [code](https://github.com/thomthom/tt-lib) / [docs](https://www.rubydoc.info/github/thomthom/tt-lib) - *"A skippy library for SketchUp"* - "*Until skippy is more mature, this library can be used as a resource and a reference point for small utility classes and methods useful in common SketchUp extension development.*"
- [SketchUp Units and Locale helper] (TT) - *mini-library.. to provide easy conversions of Area and Volume within SketchUp as well as dealing with user environment locale.*
- [View-lib] (Eneroth) - *Wrapper for SketchUp view and camera functionality.*
- [Inference Lock Lib] (Eneroth) - *Inference locking for custom.. tools to match behavior of native tools.*
- [Ordbok-lib] (Eneroth) - localization library
- [Dialogs-lib] (Eneroth) - a lightweight, easy to use UX library for HtmlDialog, purely using web technologies, no Ruby, to allow you to easily implement it existing dialogs.
- [SketchUp Community Library] (Eneroth) - early work in progress

--------------------
## Exemplary code

SU code that is open-source and seems worth a look -- perhaps well-commented, or proper & up-to-date, or created explicitly as an example.

- SU  - [Examples: HTMLDialog Examples]
- SU  - [Examples: HTML Inputbox]
- SU  - [Examples: SketchUp Ruby C/C++ Extension]
- SU  - [Examples: SketchUp Live C API]
- SU  - [Examples: color-at-uv] - example of `Sketchup::ImageRep`
- SU  - [Examples: Drawing Shaded and Textured Polygons]
- SU  - [Examples: Testing Weld]
- SU  - [SketchUp Shapes] - see also [github page](https://github.com/SketchUp/sketchup-shapes)
- SU  - [SketchUp Ruby C/C++ Extension Examples]
- SU  - [SketchUp-STL] - for 3D printing, mainly
- SU  - [SketchUp Shapes]
- TT  - [CleanUp3]
- TT  - [Selection Toys]
- TT  - [Solid Inspector]
- TT  - [Component Properties]
- TT  - [SuperGlue]
- TT  - [Model Info]
- TT  - [QuadFace Tools]
- TT  - [Transformation Inspector] 
- ene - [Eneroth Solid Tools]
- ene - [Legacy Save]
- ene - [Eneroth Scene Visibility]
- ene - [Eneroth Viewport Resizer 2] - Remake of a 2014 extension
- ene - [Eneroth Random Selection]
- ene - [Eneroth Component to Group]
- ene - [Script Runner] - *"Run Ruby script by dropping it in SketchUp."*

-----------------
## UX

In 2017, [HTMLDialog] replaced [WebDialog]. More info [here](https://github.com/aerilius/sketchup-bridge).

- [Module:UI] docs
- [HTMLDialog examples]
- [SketchUp Bridge] (aerilius) -- good reading on the homepage
- [WebDialogs - The Lost Manual (TT 2013)]
- [SKUI (TT)](https://github.com/thomthom/SKUI) (abandoned?) - *... framework... to provide Ruby wrapper classes to manipulate GUI control elements in SketchUp's UI::WebDialog API.*

-----------------
## Tutorials

  - [SU dev 'getting started']
  - [Ruby API tutorials]
  - [Scripting Tutorials](https://sketchupfordesign.com/sketchup-tutorials-news/tutorials/scripting/) at [Sketchup For Design] (Alex Schreyer)
  - [VS Code debugging]


--------------------
## My to do

- set up for SU-ruby tutorials
- set up auto-completion / intellisense / etc
- customize [VS Code template](https://github.com/SketchUp/sketchup-extension-vscode-project):
  - `.rubocop.yml`
  - `.solargraph.yml`
  - `.vscode/tasks.json`
  - `.editorconfig`
- learn *bundler*
- debugging / testing:
  - learn [Minitest] - tutorial [here](https://semaphoreci.com/community/tutorials/getting-started-with-minitest)
  - learn [TestUp]
  - try [SpeedUp]
- tweak template (VS Code SU extension project)
- advanced: learn automatic documentation via YARD / rdoc
- advanced: set up local docs repo (ruby stdlib + sketchup API) w/ dark theme, cross-platform viewing

-------------------
## My setup log

- Windows 10 Pro
- Windows Subsystem for Linux (WSL) -- Ubuntu 20.04 LTS -- I do all my coding on WSL
- SketchUp Pro 2021
- VS Code (installed to Windows, running Remote WSL extension)
- Windows Terminal (for bash, powershell, etc)
- Installed Ruby 2.7.2 on WSL (installed as user with *ruby-install*, managed with *chruby*)
- Installed VS Code extensions:
  - *Remote - WSL*
  - *Ruby*
  - *Ruby Solargraph*
  - *ruby-rubocop*
  - *Auto Add Brackets in String Interpolation*
  - *Seeing is Believing Integration*
  - *Markdown All in One*
- Installed gems:
  - `bundler`
  - `yard`
  - `solargraph`
  - `seeing_is_believing`
  - `rubocop`
  - `ruby-api-stubs`
  - `minitest`
- Solved Solargraph error `invalid byte sequence in UTF-8` -- [more info](https://forums.sketchup.com/t/solargraph-not-working-with-wsl/151684/4?u=bubbavox)
- Created workspace: `workspace-sketchup`, and selected some root folders to show in the sidebar.
  - see [VS Code Multi-Root Workspaces] and [VS Code Multi-Root Workspaces # debugging](https://code.visualstudio.com/docs/editor/multi-root-workspaces#_debugging)
- Cloned this awesome template: [VSCode Project for SketchUp Extension Development] (see instructions on that page):
  - Customized the template:
    - `.solargraph.yml` - set `require_paths` and tweaked file according to [this page](https://github.com/SketchUp/sketchup-ruby-api-tutorials/wiki/VSCode-Stubs-Setup)
    - `.rubocop.yml` - see file comments and also the [rubocop-sketchup docs](https://rubocop-sketchup.readthedocs.io/en/stable/)
- Installed gems with CLI `bundle install` in the template directory (uses Gemfile to install dependencies).
- Set up [VSCode API stubs](https://github.com/SketchUp/sketchup-ruby-api-tutorials/wiki/VSCode-Stubs-Setup):
  - I guess this is already mostly complete, since I've initialized the VS Code project template.
  - Ran `yard gems ruby-api-stubs` as instructed -- whatever that does!
  - VSCode settings > workspace settings > `"solargraph.diagnostics": true`
- followed TT's suggested [development setup](https://github.com/SketchUp/sketchup-ruby-api-tutorials/wiki/Development-Setup#wiki-pages-box):
  - created `/appdata/.../Plugins/!external.rb`
  - changed its path to a new directory for active projects: `D:/.../SU_code/!active`
  - It seems like folder structure is picky and not recursive, e.g. for the above path, need the following contents:
    -  `D:/.../!active/ex_hello_cube.rb`
    -  `D:/.../!active/ex_hello_cube/main.rb`
    
  - added a reload method to the VSC template extension `.../ex_hello_cube/main.rb`
  ```ruby
  # Reload extension by running this method from the Ruby Console:
  #   Example::HelloCube.reload
  def self.reload
    original_verbose = $VERBOSE
    $VERBOSE = nil
    pattern = File.join(__dir__, '**/*.rb')
    Dir.glob(pattern).each { |file|
      # Cannot use `Sketchup.load` because its an alias for `Sketchup.require`.
      load file
    }.size
  ensure
    $VERBOSE = original_verbose
  end
  ```

- Set up debugger:
  - Installed DLL in SketchUp dir
  - template project contains `tasks.json` and `launch.json`
- debugger isn't working (WSL):
  - started SU with Powershell: `.\Sketchup.exe -rdebug "ide port=7000"`
  - VS Code debugger output: `Debugger error: Client: Error: connect ECONNREFUSED 127.0.0.1:7000`
- rubocop gives warning... safe to ignore?
  - excerpt: `/home/bubba/.rubies/ruby-2.7.2/lib/ruby/2.7.0/uri/version.rb:3: warning: already initialized constant URI::VERSION_CODE
/home/bubba/.gem/ruby/2.7.2/gems/uri-0.10.1/lib/uri/version.rb:3: warning: previous definition of VERSION_CODE was here
/home/bubba/.rubies/ruby-2.7.2/lib/ruby/2.7.0/uri/version.rb:4: warning: already initialized constant URI::VERSION
/home/bubba/.gem/ruby/2.7.2/gems/uri-0.10.1/lib/uri/version.rb:4: warning: previous definition of VERSION was here`

--------------------
## Unsorted info

- [SketchUp Ruby API] homepage - some useful info here
- [Ruby Learning Resources] @ SU Forums (DanRathbun) - super helpful compendium
- [SketchUp Sage]
- [PickHelper: A Visual Guide]
- [SketchUp Ruby C/C++ Extension Examples]
- [SketchUp Live C API Examples] - *..how to setup and build your own Ruby C extension that uses the SketchUp C API to read from the active model.*
- http://www.thomthom.net/thoughts/2012/08/dealing-with-units-in-sketchup/
- [SU forums: frozen strings, encoding, _FILE_, etc](https://forums.sketchup.com/t/force-encoding-when-using-frozen-string-literals/109362)
- [SU forums: Why frozen string literals?](https://forums.sketchup.com/t/why-frozen-string-literals/123843)
- [Golden Rules] of SketchUp Development - 2012 article by ThomThom

[DanRathbun 2021-01](https://forums.sketchup.com/t/su-development-workflow-environment/151298/2?u=bubbavox): *"Many of us recommend using a local module `@loaded` var to determine whether to load UI elements, rather than the slow and clunky `file_loaded()` and `file_loaded?()` methods defined in "sketchup.rb".
(String comparison is slow in Ruby, and those methods use a global shared array in which simple file names might clash. Long absolute pathnames are going to slow the startup cycle.)"*

--------------------

<!-- LINKS --------->

<!-- docs -->
[ruby-doc.org]: https://ruby-doc.org/core-2.7.1/
[RubyDoc.info]: https://rubydoc.info/stdlib/core/
[RubyAPI.org]: https://rubyapi.org/2.7
[devdocs.io]: https://devdocs.io/ruby~2.7/
[Ruby Style Guide]: https://github.com/rubocop-hq/ruby-style-guide
[Ruby QuickRef]: https://www.zenspider.com/ruby/quickref.html

[SketchUp Ruby API]: https://ruby.sketchup.com/
  [Module:UI]: https://ruby.sketchup.com/UI
  [HTMLDialog]: https://ruby.sketchup.com/UI/HtmlDialog.html
  [WebDialog]: https://ruby.sketchup.com/UI/WebDialog.html
[Ruby API tutorials Wiki]: https://github.com/SketchUp/sketchup-ruby-api-tutorials/wiki
[WebDialogs - The Lost Manual]: https://github.com/thomthom/sketchup-webdialogs-the-lost-manual
[Ruby API Class diagram]: https://raw.githubusercontent.com/bubbavox/wiki/master/assets/SU-ruby_class_diagram.gif
[PickHelper: A Visual Guide]: https://raw.githubusercontent.com/bubbavox/wiki/master/assets/PickHelper_Visual-Guide_TT_-Rev3.2-18-03-2013.pdf
[VS Code Multi-Root Workspaces]: https://code.visualstudio.com/docs/editor/multi-root-workspaces
[VS Code docs]: https://code.visualstudio.com/docs/
[VS Code debugging]: https://code.visualstudio.com/docs/editor/debugging

<!-- hubs -->
[GitHub / SketchUp]: https://github.com/SketchUp/
[GitHub / ThomThom]: https://github.com/thomthom/
[GitHub / Eneroth3]: https://github.com/Eneroth3
[SketchUp Developer]: (https://developer.sketchup.com/)
[SU forums: Developers]: https://forums.sketchup.com/c/developers
[SU forums: Extensions]: https://forums.sketchup.com/c/extensions
[SU forums: Happenings]: https://forums.sketchup.com/c/happenings
[Sketchucation Dev Forums]: http://sketchucation.com/forums/viewforum.php?f=180&sid=9dd6294acb986d0264ea756d32e3245d
[SketchUp Sage]: https://sites.google.com/site/sketchupsage/
[Ruby Learning Resources]: https://forums.sketchup.com/t/ruby-learning-resources-wikilists/22861
[Sketchup For Design]: https://sketchupfordesign.com/

<!-- dev tools -->
[SketchUp Ruby Debugger]: https://github.com/SketchUp/sketchup-ruby-debugger
[VSCode Project for SketchUp Extension Development]: https://github.com/SketchUp/sketchup-extension-vscode-project
[RuboCop SketchUp]: https://github.com/SketchUp/rubocop-sketchup
[TestUp]: https://github.com/SketchUp/testup-2
[SpeedUp]: https://github.com/SketchUp/speedup
[Ruby API stubs]: https://github.com/SketchUp/ruby-api-stubs
[Skippy]: https://github.com/thomthom/skippy
[SketchUp Bridge]: https://github.com/aerilius/sketchup-bridge
[SketchUp YARD template]: https://github.com/SketchUp/sketchup-yard-template
[Transformation Inspector]: https://github.com/thomthom/transformation-inspector
[SketchUp Attribute Helper]: https://github.com/SketchUp/sketchup-attribute-helper

<!-- libraries and such -->
[SketchUp Units and Locale Helper]: https://github.com/thomthom/SketchUp-Units-and-Locale-Helper
[Inference Lock Lib]: https://github.com/Eneroth3/inference-lock-lib
[View-lib]: https://github.com/Eneroth3/view-lib
[Ordbok-lib]: https://github.com/Eneroth3/ordbok-lib
[Dialogs-lib]: https://github.com/Eneroth3/dialogs-lib
[Scale-lib]: https://github.com/Eneroth3/scale-lib
[SketchUp Community Library]: https://github.com/Eneroth3/sketchup-community-lib

<!-- extensions -->
[SketchUp Shapes]: https://extensions.sketchup.com/extension/5b95d769-4696-4312-a732-e7950dd5ddfb/shapes
[CleanUp3]: https://extensions.sketchup.com/extension/046175e5-a87a-4254-9329-1accc37a5e21/cleanup%C2%B3
[Solid Inspector]: https://github.com/thomthom/solid-inspector
[Selection Toys]: https://extensions.sketchup.com/extension/c9266b2c-0b55-4d21-a0a4-72e23b8a0fb4/selection-toys
[Component Properties]: https://extensions.sketchup.com/extension/248d1f45-2989-49f7-ac15-0b14129c6973/component-properties
[SuperGlue]: https://extensions.sketchup.com/extension/0c452629-3893-46f7-8805-004038fc5d24/superglue
[Transformation Inspectr]: https://github.com/thomthom/transformation-inspector
[SketchUp-STL]: https://github.com/SketchUp/sketchup-stl
[QuadFace Tools]: https://github.com/thomthom/quadface-tools
[View-lib]: https://github.com/Eneroth3/view-lib
[Eneroth Solid Tools]: https://github.com/Eneroth3/eneroth-solid-tools
[Eneroth Scene Visibility]: https://github.com/Eneroth3/eneroth-scene-visibility
[Legacy Save]: https://github.com/Eneroth3/legacy-save
[Eneroth Viewport Resizer 2]: https://github.com/Eneroth3/Viewport-Resizer-2
[Eneroth Random Selection]: https://github.com/Eneroth3/RandomSelection
[Eneroth Component to Group]: https://github.com/Eneroth3/component-to-group
[Script Runner]: https://github.com/Eneroth3/sketchup-script-runner
[Model Info]: https://github.com/thomthom/model-info

<!-- examples -->

[Examples: HTML Inputbox]: https://github.com/SketchUp/htmldialog-inputbox
[Examples: HTMLDialog Examples]: https://github.com/SketchUp/htmldialog-examples
[Examples: Drawing Shaded and Textured Polygons]: https://github.com/SketchUp/sketchup-draw-mesh
[Examples: SketchUp Ruby C/C++ Extension]: https://github.com/SketchUp/ruby-c-extension-examples
[Examples: SketchUp Live C API]: https://github.com/SketchUp/sketchup-live-c-api
[Examples: Ruby C/C++ Extension]: https://github.com/SketchUp/ruby-c-extension-examples
[Examples: color-at-uv]: https://github.com/SketchUp/color-at-uv
[Examples: Testing Weld]: https://github.com/SketchUp/sketchup-weld

<!-- tutorials -->
[SU dev 'getting started']: https://developer.sketchup.com/developers/getting-started
[Ruby API tutorials]: https://github.com/SketchUp/sketchup-ruby-api-tutorials

<!-- Ruby stuff -->
[Minitest]: https://github.com/seattlerb/minitest
[Benchmark]: https://rubydoc.info/stdlib/benchmark/Benchmark
[RubyProf]: https://ruby-prof.github.io/

<!-- other -->
[Golden Rules]: http://www.thomthom.net/thoughts/2012/01/golden-rules-of-sketchup-plugin-development/