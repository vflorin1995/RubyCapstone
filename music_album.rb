require_relative 'item'

# MusicAlbum class
class MusicAlbum < Item
  def initialize(on_sportify)
    super(genre, author, label, publish_date, archived: false)
    @on_sportify = on_sportify
  end

  # Check whether to be archived
  def can_be_archived?
    @archived == true && @on_sportify == true
  end
end
