require('uuid')

class Song
  def initialize(name, artist, genre)

    uuid = UUID.new

    @id = uuid.generate
    @name = name
    @genre = genre
    @artist = artist
    @artist_id = ""

  end

  def id
    return @id
  end

  def set_top_genres
    @top_genres = []
    genre_count = Hash.new(0)
    #MORE TO THIS
  end

  def details
    return {
      name: @name,
      genre: @genre,
      artist: @artist
    }
  end
end
