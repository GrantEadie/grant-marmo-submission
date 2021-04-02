require('./lib/artist')
require('./lib/song')

class Database 
  def initialize()
    @artists = [Artist.new("Animal Collective"), Artist.new("Gold Panda"), Artist.new("Ratatat"), Artist.new("Islands")]
    @songs = [Song.new("My Girls", "Animal Collective", "Experimental"), Song.new("Bluish", "Animal Collective", "Experimental")]
  end

  def artists
    return @artists
  end

  def songs
    return @songs
  end
  
end

