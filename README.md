# FnSyntax

Adds fn method to define anonymous functions with args available as _1, _2, _3 upto _9

## Installation

Add this line to your application's Gemfile:

    gem 'fn_syntax'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fn_syntax

## Usage

    require 'fn_syntax'
    times_four = fn{ _1 * 4 }
    (1..5).map &times_four # => [4, 8, 12, 16, 20]

## Contributing

1. Fork it ( https://github.com/alesguzik/fn_syntax/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
