Class item
    attr_accessor: :id, :genre, :author, :label, :source, :publish_date, :archived
    def initialize (id = Random.rand(1..1000), genre, author, label, source, publish_date, archived: true)
        @id = id
        @genre = genre
        @author = author
        @label = label
        @source = source
        @publish_date = publish_date
        @archived = archived
    end
end
