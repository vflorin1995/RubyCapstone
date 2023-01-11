# frozen_string_literal: true
require 'json'
require_relative 'item'
require_relative 'genre'

# Music Albums and genre module
module MusicAlbumHandler
  # Add Music Album
  def add_a_music_album
    puts 'Is the album on Sportify? [y/n]'
    input = gets.chomp.downcase
    on_sportify = input == 'y'
    puts 'Publish date:'
    publish_date = gets.chomp.to_s
    album = MusicAlbum.new(on_sportify, publish_date)
    @albums << album
    save_music_album(album)
    puts 'Would you want to add genre? [y/n]: '
    option = gets.chomp.downcase
    if option == 'y'
      puts "Enter a genre for the album (e.g 'Comedy', 'Thriller'): "
      name = gets.chomp
      genre = Genre.new(name)
      @genres << genre
      save_genre(genre)
    end
    if option == 'n'
     puts "It's Ok!"
    end
    puts 'Music album added successfully'
    puts ' '
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

  # Persist MusicAlbum data
  def save_music_album(album, file_name = 'music_album.json')
    data = []
    if File.exist?(file_name)
      file = File.read(file_name)
      data = JSON.parse(file)
    end
    data << album
    begin
      File.open(file_name, 'w') do |file|
        file.write(data.to_json)
      end
      rescue => e
        puts 'error occurred'
      end
  end

  # Persist Genre data
  def save_genre(genre, file_name = 'genre.json')
    data = []
    if File.exist?(file_name)
      file = File.read(file_name)
      data = JSON.parse(file)
    end
    data << genre
    begin
      File.open(file_name, 'w') do |file|
        file.write(data.to_json)
      end
      rescue => e
        puts 'error occurred'
      end
  end
end
