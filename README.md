# Kcache

Provide method for multi_fetch value from an array objects.
Make sure your system can run well even when memcached server is down.

## Installation

Add this line to your application's Gemfile:

    gem 'kcache'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kcache

## Usage

Please configure memcached server (we have default configuration file on rails)
Please include module Kcache to use the method as you want.
You can write override method for your purpose if you need.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
