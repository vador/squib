# Squib [![Gem Version](https://badge.fury.io/rb/squib.svg)](https://rubygems.org/gems/squib) [![Build Status](https://secure.travis-ci.org/andymeneely/squib.svg?branch=master)](https://travis-ci.org/andymeneely/squib) [![Dependency Status](https://gemnasium.com/andymeneely/squib.svg)](https://gemnasium.com/andymeneely/squib) [![Coverage Status](https://img.shields.io/coveralls/andymeneely/squib.svg)](https://coveralls.io/r/andymeneely/squib) [![Inline docs](http://inch-ci.org/github/andymeneely/squib.png?branch=master)](http://inch-ci.org/github/andymeneely/squib)
Squib is a Ruby [DSL](http://en.wikipedia.org/wiki/Domain-specific_language) for prototyping card and board games. Think of it like [nanDeck](http://www.nand.it/nandeck/) done "the Ruby way". Squib supports:

* Complex text rendering using [Pango](http://www.pango.org/)
* Reading PNGs and SVGs using [Cairo](http://cairographics.org/)
* Reading `.xlsx` files
* Basic shape drawing
* Rendering to PNGs and PDFs
* Plus the full power of Ruby! 

Check this out. 

```ruby
require 'squib'

Squib::Deck.new do
  text str: 'Hello, World!'  
  save_png
end
```

That script just created 3 PNG images at 825x1125 with the string "Hello, World" in the upper-left corner.

## Installation

Install it yourself with:

    $ gem install squib

If you're using Bundler, add this line to your application's Gemfile:

    gem 'squib'

And then execute:

    $ bundle

Note: Squib has some native dependencies, such as [Cairo](https://github.com/rcairo/rcairo), [Pango](http://ruby-gnome2.sourceforge.jp/hiki.cgi?Pango%3A%3ALayout), and [Nokogiri](http://nokogiri.org/), which all require DevKit to compile C code. This is usually not painful, but can cause headaches on some setups. For Windows users, I *strongly* recommend using the *non-64 bit* RubyInstaller at http://rubyinstaller.org. For Mac, I recommend using [rvm](https://rvm.io). Squib requires Ruby 2.0 or later.

## Getting Started

After installing Squib, you can create a project and run your first build like this:

```sh
$ squib new my-cool-game
$ cd my-cool-game
$ ruby deck.rb
```

The `squib new` command will generate files and folders like this:

```
_output
  gitkeep.txt
.gitignore
ABOUT.md
config.yml
deck.rb
Gemfile
layout.yml
PNP NOTES.md
```

The central file here is `deck.rb`. Here's a basic example of a deck to work from:

{include:file:samples/basic.rb}

## Learning Squib's API

* The `samples` directory in the [source repository](https://github.com/andymeneely/squib) has lots of examples
* The document called API.md walks through the various methods and options that apply to the entire Squib API
* [API Documentation](http://rubydoc.info/gems/squib/) is also kept up-to-date.

## Development

Squib is currently in pre-release alpha, so the API is still maturing. If you are using Squib, however, I'd love to hear about it! Feel free to [file a bug or feature request](https://github.com/andymeneely/squib/issues).

## Contributing

Squib is an open source tool, and I would love participation. If you want your code integrated:

1. Fork it ( https://github.com/[my-github-username]/squib/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
