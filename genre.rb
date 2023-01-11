# frozen_string_literal: true

require_relative 'item'

# Genre class
class Genre
  attr_accessor :name
  attr_reader :items

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
  end

  # serializing Music Album
  def to_json(option = {})
    { name: @name }.to_json(option)
  end
end
