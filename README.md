# mushin_dsf_bit
BiT allows you to do everything BitTorrenty in Ruby. BiT is a mushin-based Domain-specific Framework.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mushin_dsf_bit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mushin_dsf_bit

## Usage

```ruby
require 'mushin_dsf_bit'

query = "MIT opencourseware"

@domain = BiT::Domain.new do  
	all do  
       		search max_results: 20, query: query, ssd_query: query, ssd_path: "/torrent_bots"
	end 

	query do  
		most_seeded_torrents search_query: query, ssd_path: "/torrent_bots" 
        end 
end 

p @domain.store[:most_seeded_torrents].to_json
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mushin_dsf_bit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

