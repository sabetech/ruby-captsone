class Genre
    attr_accessor :name, :id
    attr_reader :items
  
    def initialize(name, id = Random.rand(1..5_000_000))
        @id = id
        @name = name
        @items = []      
    end
  
    def add_item(item)
      @items << item
      item.add_genre(self)
    end
end