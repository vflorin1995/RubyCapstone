# frozen_string_literal: true

require_relative 'book'
require_relative 'label'
require_relative 'game'
require_relative 'author'
# App Class
class App
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
 4 - List all genres\n 5 - List all labels\n 6 - List all authors\n 7 - Add a book\n 8 - Add a music album\n  9 - Add a game\n 10- Quit the App\n"
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

    when 3
      list_of_games
    when 5
      list_all_labels
    when 6
      list_all_authors
    when 7
      add_a_book
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
    puts "\nWould you like to add a label?\n"
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

  def list_of_games
    if @games.empty?
      puts "\nThere is no game available \n"
    else
      @games.each do |game|
        puts "Multiplayer #{game.multiplayer}, last_played_at #{game.last_played_at}, publish_date #{game.publish_date}"
      end
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

  def list_all_authors
    if @authors.empty?
      puts "\nThere are no authors available"
    else
      @authors.each { |author| puts "First Name #{author.first_name}, Last Name #{author.last_name}" }
    end
    menu
  end

  def add_a_game
    puts "\nMultiplayer\n"
    multiplayer = gets.chomp
    puts "\nLast played at\n"
    last_played_at = gets.chomp
    puts "\nPublish date\n"
    publish_date = gets.chomp
    game = Game.new(multiplayer, last_played_at, publish_date)
    @games.push(game)
    puts "\nWould you like to add a game?[Y,N]\n"
    option = gets.chomp
    if option == 'y'
      puts "\nEnter the First name of thr author\n"
      first_name = gets.chomp
      puts "\nEnter the Last name for the author\n"
      last_name = gets.chomp
      author = Author.new(first_name, last_name)
      @authors.push(author)
    end
    menu
  end
end
