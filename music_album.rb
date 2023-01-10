# frozen_string_literal: true

require 'json'

require_relative 'item'

# MusicAlbum class
class MusicAlbum < Item
  attr_accessor :on_sportify, :publish_date

  def initialize(on_sportify, id = Random.rand(1..1000))
    super(id, publish_date)
    @on_sportify = on_sportify
  end

  # Check whether to be archived
  def can_be_archived?
    @archived && @on_sportify == true
  end
end
