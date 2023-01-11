require_relative '../author'
require_relative '../item'

describe Author do
  context 'It should create author and add to items' do
    author = Author.new('Faranosh', 'Amini')
    it 'Creates a new author' do
      expect(author).to be_an_instance_of Author
    end
    it 'Should return array of items' do
      expect(author.items.class).to eq Array
    end
    it 'Should return First Name' do
      expect(author.first_name).to eq 'Faranosh'
    end
    it 'Should return Last Name' do
      expect(author.last_name).to eq 'Amini'
    end
  end
end
