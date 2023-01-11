require_relative '../book.rb'
require_relative '../label.rb'

describe 'Test the book class' do
    it 'Test the initialize method' do
        test_publisher = 'John'
        test_publish_date = '02/02/03'
        test_cover_state = 'Good'

        book = Book.new(test_publisher, test_cover_state, test_publish_date)

        expect(book.publisher).to eq(test_publisher)
        expect(book.cover_state).to eq(test_cover_state)
        expect(book.publish_date).to eq(test_publish_date)
        expect(book.archived).to eq(false)
    end

    it 'Test the class methods' do
        test_publisher = 'John'
        old_date = '02/02/03'
        new_date = '02/02/22'
        good_cover = 'good'
        bad_cover = 'bad'

        book1 = Book.new(test_publisher, good_cover, old_date)
        book2 = Book.new(test_publisher, good_cover, new_date)
        book3 = Book.new(test_publisher, bad_cover, old_date)
        book4 = Book.new(test_publisher, bad_cover, new_date)

        expect(book1.can_be_archived?).to eq(true)
        expect(book2.can_be_archived?).to eq(false)
        expect(book3.can_be_archived?).to eq(true)
        expect(book4.can_be_archived?).to eq(true)
    end

    it 'Test the add label method' do
        test_publisher = 'John'
        test_publish_date = '02/02/03'
        test_cover_state = 'Good'
        book = Book.new(test_publisher, test_cover_state, test_publish_date)

        test_title = 'title'
        test_color = 'red'
        label = Label.new(test_title, test_color)
        book.add_label(label)
        
        expect(book.label).to eq(label)
    end
end
