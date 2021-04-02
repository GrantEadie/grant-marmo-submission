#!/usr/bin/env ruby
require('./lib/artist')
require('./lib/artist')

# State Holders
run_app = true
artist_db = []
song_db = []

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

