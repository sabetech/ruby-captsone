require 'json'
require 'fileutils'

module DataPersistence
    def load_books()
        return []
        if File.exist?('./data/books.json')
          serialized_books = JSON.parse(File.read('./data/books.json'))
          books = []
    
          serialized_books.each do |book|
            books << Book.new(book['title'], book['author'])
          end
          books
        else
          []
        end
    end  

    def load_music_albums()
        return []
        if File.exist?('./data/music_albums.json')
          serialized_music_albums = JSON.parse(File.read('./data/music_albums.json'))
          music_albums = []
    
          serialized_music_albums.each do |music_album|
            music_albums << music_album.new()
          end
          music_albums
        else
          []
        end
    end 

    def load_games()
        return []
    end

    def load_genres()
        return []
    end

    def load_labels()
        return []
    end

    def load_authors()
        return []
    end

    def save_music_albums(music_albums)
        music_album_array = []
        music_albums.each do |music_album|
            music_album_array << music_album.to_json
        end

        create_file('./data/music_albums.json') unless File.exist?('./data/music_albums.json')
        File.write('./data/music_albums.json', JSON.generate(music_album_array))
        
    end

    def save_games(games)
        games_array = []
        games.each do |game|
            games_array << game.to_json
        end

        create_file('./data/games.json') unless File.exist?('./data/games.json')
        File.write('./data/games.json', JSON.generate(games_array))
    end

    def save_books(books)
        books_array = []
        books.each do |book|
            books_array << book.to_json
        end

        create_file('./data/books.json') unless File.exist?('./data/books.json')
        File.write('./data/books.json', JSON.generate(books_array))
    end

    def create_file(full_path)
        dirname = File.dirname(full_path)
        FileUtils.mkdir_p(dirname) unless File.directory?(dirname)
        File.new(full_path, 'w')
    end
end