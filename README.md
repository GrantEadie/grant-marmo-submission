Objective:

In this challenge, you will create a simple command line interface to add and remove songs to an artist. You will also keep track of genres and featured songs.

Setup:

use ruby version 2.6.1
install rspec

`gem install rspec`

Requirements:

* Complete the song and artist models provided
* Provide ability to add and remove songs to an artist
* An artist can *only* have one featured song, but not required
* When a song is marked as featured, it should replace any currently featured song
* Every time you add or delete a song, top genres and song count are recalculated on the artist
* Upon song addition/removal, the output should be the artist's updated information

Output example:

> $ artist = Artist.new(...)
> $ song = Song.new(...)
> $ artist.add_song(song) # name "add_song" however you wish
> $ { id: 1, name: 'Some Artist', song_count: 2, top_genres: ['Folk', 'Pop', 'Rock'], featured_song_id: 3 }

* Follow rspec guide http://betterspecs.org/ to test all relevant methods
* Data only needs to persist while running in the command line
* Do not add/remove or reorganize files

Notes:

One commit is _fine_, but it would be nice to see your though process through multiple commits. This is up to you.

To submit:

* git bundle create marmoset.bundle master
* Email the marmoset.bundle file to dev@marmosetmusic.com
* Subject should be "Marmo Code Challenge - Your Name"
