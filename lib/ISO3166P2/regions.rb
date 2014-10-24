module ISO3166P2
  class Regions
    attr_reader :all

    def initialize
      init_regions
    end

    def size
      @all.size
    end

    def first
      @all.first
    end

    private

    def init_regions
      regions_hash = Parser.new.regional_data
      # Example tuple: {:country_short_code=>"ZW", :region_name=>"Midlands", :region_type=>"Province",
      #                 :regional_code=>"MI", :regional_number_code=>21281}
      @all         = regions_hash.map do |region|
        Region.new region[:country_short_code],
                   region[:region_name],
                   region[:region_type],
                   region[:regional_code],
                   region[:regional_number_code]
      end

    end

  end
end
