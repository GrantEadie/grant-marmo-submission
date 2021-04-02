require 'rspec'
require('song.rb') 

describe Song do
  let(:song) { Song.new("My Girls", "Animal Collective", "Experimental")}

  context 'when song class is instantiated' do 
    it ('will create a uuid for the song id') do 
      expect(song.id.is_a? String).to be true
    end
  end

  context 'when the details method is called' do 
    it('will return the song name, artist, and genre') do 
      expect(song.details).to(eq({
        :genre => "Experimental",
        :name => "My Girls",
        :artist => "Animal Collective"
      }))
    end
  end

  
end