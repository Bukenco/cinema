module Management
  class CatalogServices

    attr_accessor :errors

    def initialize(params)
      @params = params
      @errors = []
    end

    def json_view
      { list: @data.as_json }
    end

    def movies
      @data =  Movie.all
    end

    def slots
      @data = SessionSlot.all
    end

    def venues
      @data = Venue.all
    end
  end
end