module DataPersistence
    def load_books()
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
end