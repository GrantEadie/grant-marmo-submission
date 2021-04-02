#!/usr/bin/env ruby
require("./mock_db")
require("./lib/artist")
require("./lib/song")

run_app = true
db = Database.new()

# Mock DB
$artist_db = db.artists
$song_db = db.songs

# Sort current songs
$song_db.each do |song|
  $artist_db.each do |artist|
    if song.details[:artist] == artist.details[:name]
      artist.add_song(song)
    end
  end
end

# Nav text
$welcome = "\n Welcome to the Artist and Song database, what would you like to do? (type the number of the option)\n\n"
$option_one = "  1 - create a new artist"
$option_two = " \n  2 - create a new song"
$option_three = " \n  3 - See a list of artists"
$option_four = " \n  4 - See a list of songs"
$option_five = " \n  5 - See Artist details"
$option_six = " \n  6 - See Song details"
$option_seven = " \n  7 - Set featured song for an Artist \n"
$option_eight = " \n  8 - exit \n\n"
$success = "Success!"
$selected_artist = "\n  You selected MAKE A NEW ARTIST \n\nArtist Name: \n"
$created_artist = " You created a new artist called "
$selected_song = "\n  You selected MAKE A NEW SONG. \n\nSong Name: \n"
$created_song = " You created a new song called "
$enter_artist_name = "\n Please enter the name of the artist you want to view"
$enter_song_name = "\n Please enter the name of the song you want to view"
$enter_artist_for_feature = "\n Select the artist you want to change the featured song of. \n\n Artist Name: "
$enter_song_for_feature = "\n select a song for a feature"

# functions

def create_new_artist()
  artist_name = ""
  while artist_name == ""
    puts $selected_artist
    artist_name = gets.chomp
    $artist_db.push(Artist.new(artist_name))
    puts "\n\n\n" + $success + $created_artist + artist_name
  end
end

def create_new_song()
  song_name = ""
  while song_name == ""
    puts $selected_song
    song_name = gets.chomp
    puts "\nSong Artist: \n"
    song_artist = gets.chomp
    puts "\nSong Genre: \n"
    song_genre = gets.chomp
    new_song = Song.new(song_name, song_artist, song_genre)
    $song_db.push(new_song)

    found_artist = false
    $artist_db.each do |artist|
      if song_artist == artist.details[:name]
        artist.add_song(new_song)
        found_artist = true
      end
    end

    if !found_artist
      $artist_db.push(Artist.new(song_artist))
      puts "didn't find an artist for this song, so I created a new one :)"
    end

    puts "\n\n\n" + $success + $created_song + song_name
  end
end

def list_artists() 
  puts "\n\n"
  $artist_db.each do |artist|
    puts "- " + artist.details[:name] + "\n"
  end
end


while run_app
  user_option = ""

  # User options
  while user_option != "1" &&
        user_option != "2" &&
        user_option != "3" &&
        user_option != "4" &&
        user_option != "5" &&
        user_option != "6" &&
        user_option != "7" &&
        user_option != "8"
    puts $welcome

    puts  $option_one +
          $option_two +
          $option_three +
          $option_four +
          $option_five +
          $option_six +
          $option_seven +
          $option_eight

    user_option = gets.chomp
  end

  # Make a new artist
  if user_option == "1"
    create_new_artist
  end

  # Make a new song
  if user_option == "2"
    create_new_song
  end

  if user_option == "3"
    list_artists
  end

  if user_option == "4"
    puts "\n\n"
    $song_db.each do |song|
      puts "- #{song.details[:name]} by #{song.details[:artist]}\n"
    end
  end

  if user_option == "5"
    puts "\n Please enter the name of the artist you want to view"
    artist_name = gets.chomp
    $artist_db.each do |artist|
      if artist.details[:name] == artist_name
        puts artist.details
      end
    end
  end

  if user_option == '6'
    puts "\n Please enter the name of the song you want to view"
    song_name = gets.chomp
    $song_db.each do |song|
      if song.details[:name] == song_name
        puts song.details
      end
    end
  end

  if user_option == '7'
    puts $enter_artist_for_feature
    artist_name = gets.chomp
    $artist_db.each do |artist|
      if artist.details[:name] == artist_name
        puts $enter_song_for_feature
        artist.details[:songs].each do |song|
          puts song.details[:name]
        end
        song_name = gets.chomp
        artist.set_featured_song(song_name)
      end
    end
  end
end
