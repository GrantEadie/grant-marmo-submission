require 'rspec'
require('artist.rb')
require('song.rb')

describe Artist do
  let(:artist) { Artist.new("Animal Collective")}
  let(:song1) { Song.new("Bluish", "Animal Collective", "Experimental")}
  let(:song2) {Song.new("My Girls", "Animal Collective", "Electronic")}
  let(:song3) {Song.new("No More Runnin", "Animal Collective", "Pop")}
  let(:song4) {Song.new("Grass", "Animal Collective", "Electronic")}
  let(:song5) {Song.new("Banshee Beat", "Animal Collective", "Experimental")}
  let(:song6) {Song.new("Lion in a Coma", "Animal Collective", "Electronic")}
  
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

  context 'when a new song has been added' do
    it('is reflected in the artist profile') do 
      artist.add_song(song1)
      expect(artist.details).to(eq({
        :name=>"Animal Collective",
        :featured_song_id => "",
        :song_count => 1,
        :top_genres => ["Experimental"],
        :songs => [song1],
        :genres => ["Experimental"]
      }))
      end
    end

    context 'when adding songs to an artist' do 
      it('will sort the most common genres in the artist genre array') do 
        artist.add_song(song1)
        artist.add_song(song2)
        artist.add_song(song3)
        artist.add_song(song4)
        artist.add_song(song5)
        artist.add_song(song6)
        expect(artist.details[:top_genres]).to(eq(["Electronic", "Experimental", "Pop"]))
      end
    end

    context 'when set_featured_song is called' do 
      it('will set the artist featured song to user input') do 
        artist.add_song(song1)
        artist.set_featured_song("Bluish")
        expect(artist.details[:featured_song_id]).to eq song1.id
      end
    end

    context 'when set_featured_song is called multiple times' do 
      it('will overwrite previously set featured song') do 
        artist.add_song(song1)
        artist.add_song(song2)
        artist.set_featured_song("Bluish")
        artist.set_featured_song("My Girls")
        expect(artist.details[:featured_song_id]).to eq song2.id
      end
    end
end
