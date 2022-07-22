require './classes/music_album'
class ListMusicAlbums < MusicAlbum
    attr_reader :music_albums
    def initialize(music_albums)
        @music_albums = music_albums
    end

    def display_book_list 
    end
end