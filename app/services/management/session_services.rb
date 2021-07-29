module Management
  class SessionServices
    require 'errors_format'
    include ErrorsFormat
    attr_accessor :errors

    def initialize(params)
      @params = params
      @errors = []
    end

    def json_view
      { success: true }
    end

    def movie_sessions
      @data = MovieSession.all
    end

    def create
      validate_data!
      create_object
    end

    def update
      find_object
      update_object
    end

    private

    def validate_data!
      validate_movie!
      validate_slot!
      validate_venue!
    end

    def validate_movie!
      @movie = Movie.find_by_id(@params[:movie_id])
      fill_custom_errors(self, :base,:invalid, "Movie Validation failed, Data not found") unless @movie
    end

    def validate_slot!
      @slot = SessionSlot.find_by_id(@params[:session_slot_id])
      fill_custom_errors(self, :base,:invalid, "Slot validation failed, Data not found") unless @slot
    end

    def validate_venue!
      @venue = Venue.find_by_id(@params[:venue_id])
      fill_custom_errors(self, :base,:invalid, "Venue validation failed, Data not found") unless @venue
    end

    def create_object
      return if errors.any?
      @movie_session = MovieSession.new(@params)
      @movie_session.save
      @errors << fill_errors(@movie_session) if @movie_session.errors.any?
    rescue ActiveRecord::RecordNotUnique
      fill_custom_errors(self,:base, :not_unique,  "Movie session is not unique")
    end

    def find_object
      @movie_session = MovieSession.find_by_id(@params[:id])
      fill_custom_errors(self, :base,:invalid, "Movie session is not found") unless @movie_session
    end

    def update_object
      @movie_session.update(@params)
      @errors << fill_errors(@movie_session) if @movie_session.errors.any?
    rescue ActiveRecord::RecordNotUnique
      fill_custom_errors(self,:base, :not_unique,  "Movie session is not unique")
    end

  end
end