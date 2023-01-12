require_relative 'item'
require 'date'
# Game Class
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(publish_date)
  end

  def can_be_archived?
    super && (Date.today.year - Date.parse(last_played_at).year) > 2
  end
end
