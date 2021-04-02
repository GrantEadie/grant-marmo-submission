#!/usr/bin/env ruby
require('./mock_db')
require('./lib/artist')
require('./lib/song')

run_app = true
db = Database.new()

# Mock DB
artist_db = db.artists
song_db = db.songs

# Nav text
_welcome = "\n Welcome to the Artist and Song database, what would you like to do? (type the number of the option)\n\n"
_option_one = "  1 - create a new artist"
_option_two = " \n  2 - create a new song"
_option_three = " \n  3 - See a list of artists"
_option_four = " \n  4 - See a list of songs"
_option_five = " \n  5 - See Artist details"
_option_six = " \n  6 - See Song details"
_option_seven = " \n  7 - Set featured song for an Artist \n"
_option_eight = " \n  8 - exit \n\n"
_success = "Success!"

_selected_artist = "\n  You selected MAKE A NEW ARTIST \n\nArtist Name: \n"
_created_artist = " You created a new artist called "

_selected_song = "\n  You selected MAKE A NEW SONG. \n\nSong Name: \n"
_created_song = " You created a new song called "

_enter_artist_name = "\n Please enter the name of the artist you want to view"
_enter_song_name = "\n Please enter the name of the song you want to view"

_enter_artist_for_feature = "\n Select the artist you want to change the featured song of. \n\n Artist Name: "
_enter_song_for_feature = "\n select a song for a feature"


while run_app 
  
  user_option = ""
  
  # User options
  while user_option != '1' && 
        user_option != '2' &&
        user_option != '3' &&
        user_option != '4' &&
        user_option != '5' &&
        user_option != '6' &&
        user_option != '7' &&
        user_option != '8' 
    
    puts _welcome

    puts  _option_one + 
          _option_two + 
          _option_three + 
          _option_four + 
          _option_five + 
          _option_six + 
          _option_seven + 
          _option_eight

        user_option = gets.chomp
  end

  # Make a new artist
  if user_option == '1' 
    artist_name = ""
    while artist_name == ""
      puts _selected_artist
      artist_name = gets.chomp
      artist_db.push(Artist.new(artist_name))
      puts "\n\n\n" + _success + _created_artist + artist_name
    end
  end

  # Make a new song
  if user_option == '2'
    song_name = ""
    while song_name == ""
      puts _selected_song
      song_name = gets.chomp
      puts "\nSong Artist: \n"
      song_artist = gets.chomp
      puts "\nSong Genre: \n"
      song_genre = gets.chomp
      new_song = Song.new(song_name, song_artist, song_genre)
      song_db.push(new_song)

      artist_db.each do |artist|
        if song_artist == artist.details[:name]
          artist.add_song(new_song)
        end
      end
      puts "\n\n\n" + _success + _created_song + song_name
    end
  end

  if user_option == '3'
    puts "\n\n"
    artist_db.each do |artist|
      puts "- " + artist.details[:name] + "\n"
    end
  end




end