require_relative '../lib/ISO3166P2/parser'
require_relative '../lib/ISO3166P2/region'
require_relative '../lib/ISO3166P2/regions'

parser = ISO3166P2::Parser.new

p parser.regional_data
p parser.regional_data.select{| region| region[:country_short_code] == 'IN'}


regions =  ISO3166P2::Regions.new
p regions.all
p regions.size
p regions.first

