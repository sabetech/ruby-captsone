require 'date'
class Item
    attr_accessor :publish_date, :archived, :id
    attr_reader :genre, :author, :source, :label
    def initialize (id, publish_date, archived: false) 
        @id = id
        @archived = archived
        @publish_date = Date::strptime(publish_date, "%Y-%m-%d") #date_format: YYYY-mm-dd
        move_to_archive()
    end

    def can_be_archived?
        now = Date.today.year
        published = @publish_date.year
        (now - published) >= 10
    end

    def move_to_archive()
        @archived = true if can_be_archived?
    end
end