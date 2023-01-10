class Label
    attr_reader :items
    @@items = []
    def initialize(title, color, id=Random.rand(1..1000))
        @title = title
        @color = color
    end
    add_item(item)
        @@items.push(item) unless @@items.include?(item)
    end
end