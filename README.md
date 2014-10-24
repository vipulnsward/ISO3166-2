# ISO3166P2

[ISO 3166-2](http://en.wikipedia.org/wiki/ISO_3166-2) is part of the ISO 3166 standard published by the 
International Organization for Standardization (ISO), and defines codes for identifying the principal subdivisions 
(e.g., provinces or states) of all countries coded in ISO 3166-1. 

ISO3166P2 provides a wrapper to fetch ISO-3166-2 data. It depends on data provided by https://github.com/fran-diaz/ISO-3166. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ISO3166P2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ISO3166P2

## Usage

###Getting all Regions

```ruby 
all_regions = ISO3166P2::Regions.new.all
p all_regions.size
# => 5077 
```

## Contributing

1. Fork it ( https://github.com/vipulnsward/ISO3166P2/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
