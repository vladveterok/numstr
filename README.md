# Numstr

It's Numstr. And it's useless.

Made as an educational gem, this tiny little bugger gets a number and returns its us-english version.

That's all, please and thank you very much.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'numstr'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install numstr

## Usage

Run:
```
$ irb
2.7.0 :001 > require 'Numstr'
```

You can play then or you can hit ENTER, get out of the loop and use Numstr as follows:
```ruby
Numstr.to_str(101)     # => 'one hundred one'
Numstr.to_str(-999999) # => 'minus nine hundred ninety nine thousand nine hundred ninety nine'
Numstr.to_str( 0)      # => 'zero, null, nil, nada, zip, goose egg'
Numstr.to_str("hi!")   # => "C'mon! 'hi!' is not a number!"
```

When you finally get bored, don't forget to uninstall the gem. Seriously, why on Earth would you need it?

## Development

Nada.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/numstr.

