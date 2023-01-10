require_relative 'item'
require_relative 'genre'

# Music Albums and genre module
module MusicAlbumHandler
   
  # Add Music Album
   def add_a_music_album
    puts "Is the album on Spotify? [y/n]"
    input = gets.chomp.downcase
    on_sportify = input == 'y'
    puts "Publish date:"
    publish_date = gets.chomp.to_s
    album = MusicAlbum.new(on_sportify, publish_date)
    @albums << album
    puts "Would you want to add genre? (1): "
    option = gets.chomp.to_i
    if option == 1
      puts "Enter a genre for the album (e.g 'Comedy', 'Thriller'): "
      name = gets.chomp
      genre = Genre.new(name)
      @genres << genre
    end
    puts "Music album added successfully"
    puts " "
    menu
  end

  # List Music Album
  def list_all_music_albums
    if @albums.empty?
      puts "\nThere are no music album available\n"
      puts ''
    else
      @albums.each { |album| puts "on Sportify?: #{album.on_sportify}, Publish date: #{album.publish_date}" }
    end
    puts ' '
    menu
  end

  # List Genres
  def list_all_genres
    if @genres.empty?
      puts "\nThere are no genre available"
         puts ''
    else
      @genres.each { |genre| puts "Name: #{genre.name}" }
    end
    puts ' '
    menu
  end
  
end