require_relative 'item'

class Book < Item
    attr_accessor :publisher, :cover_state

    alias can_be can_be_archived?

    def initialize(publisher, cover_state, publish_date, id, archived:false)
        super(publish_date, id, archived)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?
        @cover_state == 'bad' || can_be
    end
end