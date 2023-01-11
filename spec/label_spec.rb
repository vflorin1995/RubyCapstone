require_relative '../label.rb'
require_relative '../book.rb'

describe 'Test the label class' do
    it 'Test the initialize method' do
        test_title = 'title'
        test_color = 'red'

        label = Label.new(test_title, test_color)

        expect(label.title).to eq(test_title)
        expect(label.color).to eq(test_color)
    end

    it 'Test the add item method' do
        test_publisher = 'John'
        test_publish_date = '02/02/03'
        test_cover_state = 'Good'

        book = Book.new(test_publisher, test_cover_state, test_publish_date)

        test_title = 'title'
        test_color = 'red'

        label = Label.new(test_title, test_color)
        label.add_item(book)

        expect(label.items[0].publisher).to eq(test_publisher)
        expect(label.items[0].publish_date).to eq(test_publish_date)
        expect(label.items[0].cover_state).to eq(test_cover_state)
    end
end
