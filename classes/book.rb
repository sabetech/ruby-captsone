require './classes/item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def to_json(*_args)
    return {
        publish_date: "#{@publish_date.year}-#{@publish_date.month}-#{@publish_date.day}",
        cover_state: @cover_state,
        publisher: @publisher,
        genre_name: @genre.name,
        author_name: "#{@author.first_name} #{@author.last_name}",
        label_title: "#{label.title}",
        label_color: "#{label.color}"
    }
  end
end