# Docker::Machine

A Ruby wrapper around [docker-machine](https://github.com/docker/machine).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'docker-machine'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install docker-machine

## Usage

### Listing machines:

```ruby
require 'docker-machine'
Docker::Machine.ls # => ["default", "test", "ams-1", "linode.1", "linode.2"]
```

### Creating a new machine

```ruby
require 'docker-machine'
Docker::Machine.create('testbox', driver: 'virtualbox')
```

### Controlling a machine

```ruby
require 'docker-machine'
machine = Docker::Machine['default']
machine.ps # calls `docker ps` on the 'default' machine
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then,
run `rake test` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/bjjb/docker-machine. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
