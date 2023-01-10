require 'date'
# Item class
class Item
  attr_accessor :id, :publish_date, :archived
  attr_reader :label, :author, :genre, :source

  def initialize(publish_date, id = Random.rand(1..1000), archived:false)
    @id = id
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

  def add_label(label)
    @label = label
    label.add_item(label)
  end

  def add_author(author)
    @author = author
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_source(source)
    @source = source
  end

end
