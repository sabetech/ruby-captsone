require 'securerandom'

class Author
    attr_accessor :first_name, :last_name, :items

    def initialize(first_name, last_name, id = Random.rand(1..5_000_000))
        @id = id
        @first_name = first_name
        @last_name = last_name
        @items = []
    end

    def add_item(item)
        @items << item
        item.author = self
    end

    def to_json(*_args)
        {
          'id' => @id,
          'first_name' => @first_name,
          'last_name' => @last_name,
          'items' => @items
        }.to_json
      end
end