require './classes/item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify: false)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @on_spotify && super
  end

  def to_json(*_args)
    return {
        publish_date: "#{@publish_date.year}-#{@publish_date.month}-#{@publish_date.day}",
        on_spotify: @on_spotify,
        genre_name: @genre.name,
        author_name: "#{@author.first_name} #{@author.last_name}",
        label_title: "#{label.title}",
        label_color: "#{label.color}"
    }
  end
end