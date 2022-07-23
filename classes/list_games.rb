require './classes/game'
class ListGames < Game
    attr_reader :games
    def initialize(games)
        @games = games
    end

    def display_games 
    end
end