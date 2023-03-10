require_relative 'app'
# Main Class
class Main
  def start
    puts "\n\nWelcome to Catalog of my things \n 1 - List all books\n 2 - List all music albums\n 3 - List of games\n
 4 - List all genres\n 5 - List all labels\n 6 - List all authors\n 7 - Add a book\n 8 - Add a music album\n
 9 - Add a game\n 10- Quit the App\n"
    action = gets.chomp.to_i
    if action < 10 && action.positive?
      starting(action)
    elsif action == 10
      puts 'Bye!'
    else
      start
    end
  end

  def starting(action)
    app = App.new
    case action
    when 1
      app.list_all_books
    when 2
      app.list_all_music_albums
    when 3
      app.list_of_games
    when 4
      app.list_all_genres
    else
      starting2(action)
    end
  end

  def starting2(action)
    app = App.new
    case action
    when 5
      app.list_all_labels
    when 6
      app.list_all_authors
    when 7
      app.add_a_book
    when 8
      app.add_a_music_album
    when 9
      app.add_a_game
    end
  end
end

Main.new.start
