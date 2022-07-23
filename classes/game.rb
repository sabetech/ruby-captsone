require 'date'
require './classes/item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    Date.parse(@last_played_at).next_year(2) > Date.today && super
  end

    def to_json(*_args)
        return {
            multiplayer: @multiplayer,
            last_played_at: "#{@last_played_at.year}-#{@last_played_at.month}-#{@last_played_at.day}",
            publish_date: "#{@publish_date.year}-#{@publish_date.month}-#{@publish_date.day}",
            genre_name: @genre.name,
            author_name: "#{@author.first_name} #{@author.last_name}",
            label_title: "#{label.title}",
            label_color: "#{label.color}"
        }
    end
end