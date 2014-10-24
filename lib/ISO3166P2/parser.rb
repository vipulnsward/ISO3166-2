require 'smarter_csv'

module ISO3166P2
  class Parser
    ISO_FILE_DATA_PATH = '../../data/ISO-3166-2.csv'

    def initialize
      @regional_data = parse_regional_data
    end

    def regional_data
      @regional_data ||= parse_regional_data
    end

    # Example Record:
    # {:country_short_code=>"ZW", :region_name=>"Midlands", :region_type=>"Province", :regional_code=>"MI", :regional_number_code=>21281}
    def parse_regional_data
      SmarterCSV.process(File.expand_path(ISO_FILE_DATA_PATH, __FILE__))
    end
  end
end
