require 'date'
# Item class
class Item
  attr_accessor :id, :genre, :author, :label, :source, :publish_date, :archived

  def initialize(genre, author, label, source, publish_date)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @source = source
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    today_date = DateTime.now.strftime('%d/%m/')
    year = DateTime.now.strftime('%y')
    ref_date = today_date + (year.to_i - 10).to_s
    publish_date > ref_date
  end

  def move_to_archive?
    return unless can_be_archived?

    @archived = true
  end
end
