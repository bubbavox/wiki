# Ruby

Related: [Sketchup + Ruby](sketchup_ruby.md) | [VS Code](vscode.md) | [WSL](wsl.md) 

## Contents: <!-- omit in toc -->

- [Ruby](#ruby)
  - [Docs](#docs)
  - [Dev tools](#dev-tools)
  - [- REST Client - simple DSL for accessing HTTP and REST resources](#--rest-client---simple-dsl-for-accessing-http-and-rest-resources)
  - [Learning resources](#learning-resources)
  - [- Article- Weird Ruby series](#--article--weird-ruby-series)
  - [Hubs](#hubs)
  - [Other stuff](#other-stuff)
    - [Troubleshooting Solargraph:](#troubleshooting-solargraph)
  - [Code:](#code)

----------------------
## Docs

- https://rubydoc.info
- https://rubyapi.org/
- https://ruby-doc.org/
- https://devdocs.io/ruby~2.7/
- [Ruby style guide]
- [Generating local copies of docs](https://gnuu.org/2010/10/13/local-copies-of-documentation/)
- [Ruby 1.9 Keywords](https://ruby-doc.com/docs/keywords/1.9/)

----------------------

## Dev tools

- [Pry](https://github.com/pry/pry) - *Pry is a runtime developer console and IRB alternative with powerful introspection capabilities*
- [Minitest](https://github.com/seattlerb/minitest)
  - [minitest-given (Weirich)](https://github.com/jimweirich/rspec-given)
  - [Getting started with Minitest](https://semaphoreci.com/community/tutorials/getting-started-with-minitest)
- [RSpec]
  - [rspec-given (Weirich)](https://github.com/jimweirich/rspec-given)
- Ruby Debugger
  - [video - Mastering the ruby debugger by Jim Weirich](https://www.youtube.com/watch?v=GwgF8GcynV0) - debugger, pry, TDD...
  - - https://code.visualstudio.com/docs/editor/debugging
- Rake
- [Builder](https://github.com/jimweirich/builder) - XML builder
- [BlankSlate](https://github.com/masover/blankslate) - extracted from Builder, made into a standalone gem (may be)
- [REST Client](https://github.com/rest-client/rest-client) - simple DSL for accessing HTTP and REST resources
----------------------
## Learning resources

- [docs- Modules & Classes (2.7.2)](https://ruby-doc.org/core-2.7.2/doc/syntax/modules_and_classes_rdoc.html)
- [Quick Ref at zenspider](https://www.zenspider.com/ruby/quickref.html)
- [Free course- Ruby API Design with Jim Weirich](https://www.pluralsight.com/courses/play-by-play-jim-weirich)
- [Videos- Scotland on Rails Conference- 27 videos](http://www.rubyinside.com/scotland-on-rails-presentations-now-online-27-awesome-videos-1799.html)
- [Video- The Ruby Object Model by Dave Thomas](https://youtu.be/X2sgQ38UDVY)
- [Article- Avdi Grimm - Do We Need Constants](https://avdi.codes/do-we-need-constants/)
- [Video- *Mastering the Ruby Debugger* (Jim Weirich)](https://www.youtube.com/watch?v=GwgF8GcynV0) - more of an overview of debugging methods
- [Article- Encapsulation - GeeksforGeeks](https://www.geeksforgeeks.org/ruby-encapsulation/)
- [Article- Weird Ruby series](https://blog.newrelic.com/engineering/weird-ruby-begin-end/)
- [Article - How to make your Ruby code work on Windows PCs (Avdi Grimm)](https://www.rubytapas.com/2016/12/14/ruby-code-on-windows/)
----------------------
## Hubs

- [website & blog- Dave Thomas](https://pragdave.me/)
- [blog- one, step, back (Weirich)](https://onestepback.org/index.html) - Jim Weirich's archived blog
- [zen spider](https://www.zenspider.com/)
- [blog- honeybadger](https://www.honeybadger.io/blog/tags/ruby/)
- [blog- Vaidehi: Words & Code](http://vaidehijoshi.github.io/)
- [blog- Leigh Halliday](https://www.leighhalliday.com/)

----------------------

## Other stuff

### Troubleshooting Solargraph:
- See *setup log* in WSL.md

----------------------
## Code:

- **introspection:**
  - `BasicObject`
  - `Object`
  - `Module`
    - `#nesting`


- `*` - *splat* or *star* - 
- `<=>` - operator: combined comparison
- `Proc`
- `lambda`
- `Struct` - class constructor
- `super` 
  - e.g. good practice when inheriting from a class, to use in `initialize` to inherit the parent's `initialize`
- `#dup`
- `#clone`
- `class_eval`
- `begin / end` - *Way of defining a bunch of code that needs to run on it’s own, in its own context... Whatever is the last expression that is evaluated in the begin end block is the result that will be returned..*
  - *Can be helpful for defining chunks of code that need to execute in a certain order* 
  - [article 1](http://vaidehijoshi.github.io/blog/2015/08/25/unlocking-ruby-keywords-begin-end-ensure-rescue/), [article 2](https://blog.newrelic.com/engineering/weird-ruby-begin-end/)
- `rescue`
  - [article 1](http://vaidehijoshi.github.io/blog/2015/08/25/unlocking-ruby-keywords-begin-end-ensure-rescue/), [article 2](https://blog.newrelic.com/engineering/weird-ruby-2-rescue-interrupt-ensure/)
- `ensure`
  - [article](http://vaidehijoshi.github.io/blog/2015/08/25/unlocking-ruby-keywords-begin-end-ensure-rescue/)
- `||=`
  - [article](http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html)
- `#method_missing`
- `Exception` - [article](http://rubylearning.com/satishtalim/ruby_exceptions.html)
- singleton / eigenclass 
- Golden Rule of metaprogramming (dave thomas):
  - Instance variables: look up in self
  - Methods: look up in self's class

<!-- page links ----------->

[Ruby style guide]:https://github.com/github/rubocop-github
[Pry]: https://github.com/pry/pry