# frozen_string_literal: true

require 'spec_helper'

describe Genre do
  before :each do
    @genre = Genre.new('Comedy')
  end

  describe '#new' do
    it 'takes name argument to return an instance of Gerne' do
      expect(@genre).to be_instance_of Genre
    end

    it 'should check for genre item' do
      music_album = MusicAlbum.new(true, '2012/1/2')
      @genre.add_item(music_album)
      expect(@genre.items[0]).to eq music_album
    end
  end
end
