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
    
    # Creates a key, value pair for genre name and the amount of times it appears in the @genre array
    @genres.each {|genre| genre_count[genre] += 1}

    # Creates an array with the most frequent items first
    genre_sorted = genre_count.sort_by { |genre, number| number}.reverse()

    # Uses the first three elements in the array and places them in @top_genres without their designated number pair
    genre_sorted.take(3).each {|genre, number|
    @top_genres.push(genre)
    }
  end


  end

  def details
    return {
      name: @name,
      genre: @genre,
      artist: @artist
    }
  end
end
