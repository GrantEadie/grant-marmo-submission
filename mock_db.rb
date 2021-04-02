require('./lib/artist')
require('./lib/song')

class Database 
  def initialize()
    
    @artists = [
      Artist.new("Animal Collective"), 
      Artist.new("Gold Panda"), 
      Artist.new("Ratatat"), 
      Artist.new("Islands")
    ]

    @songs = [
      Song.new("My Girls", "Animal Collective", "Experimental"), 
      Song.new("Bluish", "Animal Collective", "Experimental"), 
      Song.new("No More Runnin", "Animal Collective", "Electronic"), 
      Song.new("You", "Gold Panda", "Glitch"), 
      Song.new("Parents", "Gold Panda", "Acoustic"), 
      Song.new("Marriage", "Gold Panda", "Electronic"),
      Song.new("Bilar", "Ratatat", "Electronic"),
      Song.new("Alps", "Ratatat", "Electronic"),
      Song.new("Party with Children", "Ratatat", "Pop"),
      Song.new("Rough Gem", "Islands", "Indie"),
      Song.new("Swans", "Islands", "Indie Rock")
    ]
  end

  def artists
    return @artists
  end

  def songs
    return @songs
  end

end

