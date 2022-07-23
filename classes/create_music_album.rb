require './classes/music_album'
require './classes/create_genre'
require './classes/create_label'
require './classes/create_author'

class CreateMusicAlbum < MusicAlbum
    
    def initialize()
        @publish_date = get_publish_date
        @on_spotify = get_on_spotify
        super(publish_date, on_spotify: @on_spotify)
    end

    def return_music_album

        genre = get_genre
        label = get_label
        author = get_author
       
        self.add_genre(genre)
        self.label=label
        self.add_author(author)
        
        return self
    end

    def get_genre
        puts "what's the genre of the music album?"
        answer = gets.chomp
        return CreateGenre.new(answer)       
    end

    def get_label
        puts 'what is the title of the music album'
        title = gets.chomp

        puts 'what is the color of the music album'
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

    def get_publish_date
        puts 'What is the publish date of this Album (yyyy-mm-dd)'
        date = gets.chomp
        return date
    end

    def get_on_spotify
        loop do
            puts 'Is this music label on spotify?'
            answer = gets.chomp

            case answer
            when 'y'
                return true
            when 'n'
                return false
            else
                puts "Invalid input! Type 'y' or 'n'"
            end
        end
    end
end