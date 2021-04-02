require 'rspec'
require('song.rb') 

describe Song do
  let(:song) { Song.new("My Girls", "Animal Collective", "Experimental")}

  context 'when song class is instantiated' do 
    it ('will create a uuid for the song id') do 
      expect(song.id.is_a? String).to be true
    end
  end
end