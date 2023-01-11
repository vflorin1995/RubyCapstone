# frozen_string_literal: true

require_relative 'item'
require 'date'
# Game Class
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
    super(publish_date)
  end

  private

  def can_be_archived?; end
end
