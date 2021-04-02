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

  def add_song(song)
    @song_count += 1
    @genres.push(song.details[:genre])
    set_top_genres
    @songs.push(song)
  end

  def set_featured_song(song_name)
    @songs.each do |song|
      if song.details[:name] == song_name
        @featured_song_id = song.id
      end
    end
  end

  def delete_song(song_name)
    @songs.each do |song, index|
      if song.details[:name] == song_name
        @songs.delete_at(index)
      end
    end
  end

end
