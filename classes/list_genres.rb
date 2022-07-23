require './classes/genre'
class ListGenres < Genre
    attr_reader :genres
    def initialize(genres)
        @genres = genres
    end

    def display_genres 
    end
end