module ISO3166P2
  class Region

    attr_reader :country_code, :name, :type, :code_abbr, :code_number

    def initialize country_code, name, type, code_abbr, code_number
      @country_code = country_code
      @name         = name
      @type         = type
      @code_abbr    = code_abbr
      @code_number  = code_number
    end

  end
end
