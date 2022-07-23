require './app_helper.rb'
require './modules/data_persistence'

class App
    include DataPersistence

    def initialize
        #   you can create the data folders if they don't exist yet
        @books = load_books
        @music_albums = load_music_albums
        @games = load_games
        @genres = load_genres
        @labels = load_labels
        @author = load_authors
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
            puts '============================================='
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
            ListGenres.new(@genres).display_genres
        when 5
            ListLabels.new(@labels).display_labels
        when 6
            ListAuthors.new(@authors).display_authors
        when 7
            @music_albums << CreateMusicAlbum.new.return_music_album
        when 8
            @games << CreateGame.new.return_game
        when 9
            @books << CreateBook.new.return_book
        
        when 10
            print "\n"
            puts 'Thank you for using Catalog-of-my-things'  
            print "\n"
            puts "saving items to disk ..."
            save_music_albums(@music_albums)
            save_games(@games)
            save_books(@books)
            
            exit
        else
            puts 'please select another option'
        end
    end
end