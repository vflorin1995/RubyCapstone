require 'spec_helper'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new(true, '2012/1/2')
  end

  describe '#initialize' do
    it 'should return an instance of MusicAlbum' do
      expect(@music_album).to be_instance_of MusicAlbum
    end

    describe '#on_sportify' do
      it 'takes boolean to return true if on sportify' do
        expect(@music_album.on_sportify).to eq true
      end
    end
  end

  describe '#can_be_archived' do
    it 'takes two arguments to return if @archived and on_sportify is true' do
      expect(@music_album.can_be_archived?).to eq true
    end
  end
end
