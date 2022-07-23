require './classes/game'
require './classes/create_genre'
require './classes/create_label'
require './classes/create_author'
require 'date'
class CreateGame < Game

    def initialize 
        multiplayer = get_is_multiplayer
        last_played_at = get_last_played_at
        publish_date = get_publish_date
        super(multiplayer, last_played_at, publish_date)
    end

    def return_game
        genre = get_genre
        label = get_label
        author = get_author
       
        self.add_genre(genre)
        self.label=label
        self.add_author(author)
        
        return self
    end

    def get_is_multiplayer
        loop do
            puts "Is this game a multiplayer game? [y / n]"
            answer = gets.chomp
            
            case answer
            when 'y'
                return true
            when 'n'
                return false
            else
                puts 'Invalid input: type [y / n]'
            end
        end
    end

    def get_last_played_at
        puts "When was the last time you played the game [yyyy-mm-dd]"
        date = gets.chomp
        return date
    end

    def get_publish_date
        puts 'What is the publish date of this game [yyyy-mm-dd]'
        date = gets.chomp
        return date
    end

    def get_genre
        puts "what's the genre of the game?"
        answer = gets.chomp
        return CreateGenre.new(answer)       
    end

    def get_label
        puts 'what is the title of the game'
        title = gets.chomp

        puts 'what is the color of the game'
        color = gets.chomp
        return CreateLabel.new(title, color)
    end

    def get_author
        puts 'what is the first name of the author'
        first_name = gets.chomp

        puts 'what is the last name of the author'
        last_name = gets.chomp

        return CreateAuthor.new(first_name, last_name)
    end

end
