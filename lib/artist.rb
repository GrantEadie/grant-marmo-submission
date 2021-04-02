require('uuid')

class Artist
  def initialize(name)

    uuid = UUID.new

    @id = uuid.generate
    @name = name
    @song_count = 0
    @top_genres = []
    @genres = []
    @featured_song_id = ""
    @songs = []
  end

  def id 
    return @id
  end
  
  def details
    return {
      name: @name,
      song_count: @song_count,
      top_genres: @top_genres, 
      genres: @genres, 
      featured_song_id: @featured_song_id,
      songs: @songs
    }
  end
end
