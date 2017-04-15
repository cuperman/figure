# Figure

A simple command line utility to help remember how to configure specific text editors and applications

## Installation

    $ git clone git@github.com:cuperman/figure.git
    $ bundle
    $ rake build
    $ gem install pkg/figure-0.1.0.gem

*This would be a lot easier if I pushed to rubygems.org*

## Usage

Execute the figure command line utility, and specify an application to configure, for example:

    $ figure textmate

This currently only supports textmate.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/figure. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
