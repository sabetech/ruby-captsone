require '../app_helper.rb'

class App
    def initialize
      
    end

    def run
        loop do
            puts '---------------------------------------------'
            puts 'Please choose an option by entering a number:'
            puts '---------------------------------------------'
            puts '| 1.  List all books'
            puts '| 2.  List all music albums'            
            puts '| 3.  List of games'
            puts '| 4.  List all genres'
            puts '| 5.  List all labels'
            puts '| 6.  List all authors'
            puts '| 7.  Add a music album'
            puts '| 8.  Add a game'
            puts '| 9.  Add a book'
            puts '| 10. Exit'
            puts '=============================================='
            option = gets.chomp.to_i
            process_input(option)
        end
    end

    def process_input(option)
        case option
        when 1
            ListBooks.new(@books).display_book_list
        when 2
            ListMusicAlbums.new(@music_albums).display_music_albums
        when 3
            ListGames.new(@games).display_games
        when 4
            ListGenres.new(@genres).display_genre
        when 5
            ListLabels.new(@labels).display_labels
        when 6
            ListAuthors.new(@authors).display_authors
        when 7
            CreateMusicAlbum.new.return_music_album
        when 8
            CreateGame.new.return_game
        when 9
            CreateBook.new.return_book
        
        when 10
            print "\n"
            puts 'Thank you for using Catalog-of-my-things'
            print "\n"
            exit
        else
            puts 'please select another option'
        end
    end
end