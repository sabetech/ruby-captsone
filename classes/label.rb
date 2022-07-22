require '../app_helper'

class Label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(title, color, id = Random.rand(1..5_000_000))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end