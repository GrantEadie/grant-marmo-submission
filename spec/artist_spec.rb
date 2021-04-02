require 'rspec'
require('artist.rb')
require('song.rb')

describe Artist do
  let(:artist) { Artist.new("Animal Collective")}
  let(:song1) { Song.new("Bluish", "Animal Collective", "Experimental")}
  
  context 'artist class is instantiated' do 
    it('will create a uuid for the artist id') do 
      expect(artist.id.is_a? String).to be true
    end
  end

  context 'when the add_song method is called' do 
    it('will assign specfied song to artist') do 
      expect(artist.add_song(song1)).to(eq([song1]))
    end
  end
end
