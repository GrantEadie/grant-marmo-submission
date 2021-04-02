# Hi Saloni and team!

Hope this project finds you well.

Couple of important details about my build: 

* I decided to make a mock database as a ruby file. I hope that was okay, I just figured it would be easier for all of us than Postgres or Firebase.

* I know the instructions were clear about NOT adding any more files, but I have never been able to get rspec to run without at least a spec folder. I also felt that distributing the front end logic in a script file was important. Hope that was okay too! 

* I only added one extra gem on top of rspec, and that is uuid. I felt that represented best practices with any kind of database entry. 

## How to run this thing!

* cd into the main folder
* run ```ruby artists_songs_script.rb```
* follow the prompted commands
* hit ```9``` to exit! 

### Thank you for this opportunity! 

Can't tell ya how excited I am to be interviewing with you. Hope to hear from you soon.

-Grant

---
---
---
# Marmoset Tech Team Challenge

## Objective:

In this challenge, you will create a simple program runnable in irb, and tested in rspec. This program will add and remove songs on an artist and also keep track of genres and featured songs. Make sure to complete all the requirements listed below.

## Setup:

* clone this repo
* use ruby version 2.6.1
* install rspec

```
git clone https://github.com/MarmosetMusic/marmo-code-challenge.git
gem install rspec
```

## Requirements:

* Complete the song and artist models provided
* Provide ability to add and remove songs to an artist
* An artist can *only* have one featured song, but it's not required
* When a song is marked as featured, it should replace any currently featured song
* Every time you add or delete a song, the artist's top 3 genres and song count are recalculated
* Upon song addition/removal, the output should print the artist's updated information (see example)

**Output example:**

```
$ artist = Artist.new(...)
$ song = Song.new(...)
$ artist.add_song(song) # name "add_song" however you wish
$ { id: 1, name: 'Some Artist', song_count: 2, top_genres: ['Folk', 'Pop', 'Rock'], featured_song_id: 3 }
```

* Follow rspec guide http://betterspecs.org/ to test all relevant methods
* Data only needs to persist while running in the command line
* Do not add/remove or reorganize files

## Notes:

One commit is _fine_, but it would be nice to see your though process through multiple commits. This is up to you.
We will be looking for code cleanliness, method naming/length, understanding of data design, and appropriate test coverage.

## To submit:

* `git bundle create marmoset.bundle master`
* Email the marmoset.bundle file to dev@marmosetmusic.com
* Subject should be "Marmo Code Challenge - YOUR NAME"
