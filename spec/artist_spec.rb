require 'rspec'
require('artist.rb')

describe Artist do
  let(:artist) { Artist.new("Animal Collective")}
  
  context 'artist class is instantiated' do 
    it('will create a uuid for the artist id') do 
      expect(artist.id.is_a? String).to be true
    end
  end

end
