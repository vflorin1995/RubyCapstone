# frozen_string_literal: true

require_relative 'book'
require_relative 'label'
require_relative 'genre'
require_relative 'music_album'
require_relative 'album_handler'


class App
  include MusicAlbumHandler

  def initialize
    @books = []
    @albums = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def menu
    puts "Welcome to Catalog of my things \n 1 - List all books\n 2 - List all music albums\n 3 - List of games\n
 4 - List all genres\n 5 - List all labels\n 6 - List all authors\n 7 - Add a book\n 8 - Add a music album\n
 9 - Add a game\n 10- Quit the App\n"
    action = gets.chomp.to_i
    if action < 10 && action.positive?
      select(action)
    elsif action == 10
      puts 'Bye!'
    else
      menu
    end
  end

  def select(action)
    case action
    when 1
      list_all_books
    when 2
      list_all_music_albums
    when 4
      list_all_genres
    when 5
      list_all_labels
    when 7
      add_a_book
    when 8
      add_a_music_album
    end
  end

  def add_a_book
    puts "\nPublisher\n"
    publisher = gets.chomp
    puts "\nCover state\n"
    cover = gets.chomp
    puts "\nPublish date\n"
    date = gets.chomp
    book = Book.new(publisher, cover, date)
    @books.push(book)
    puts "\nWould you like to add a label?(1)\n"
    option = gets.chomp.to_i
    if option == 1
      puts "\nChoose a title for the label\n"
      label_title = gets.chomp
      puts "\nChoose a color for the label\n"
      label_color = gets.chomp
      label = Label.new(label_title, label_color)
      @labels.push(label)
    end
    menu
  end

  def list_all_books
    if @books.empty?
      puts "\nThere are no books available\n"
    else
      @books.each { |book| puts "Publisher #{book.publisher}" }
    end
    menu
  end

  def list_all_labels
    if @labels.empty?
      puts "\nThere are no labels available"
    else
      @labels.each { |label| puts "Label name #{label.title} of color #{label.color}" }
    end
    menu
  end
end
