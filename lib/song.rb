require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    # binding.pry
    genre_count 
  end
 

  def self.artist_count
    artist_count = Hash.new(0)  # the Hash method to create a new hash has to be capitalized otherwise 
    #it wont work
    @@artists.each {|genre| artist_count[genre] += 1} #iterating over @@artists array and turn it into a hash 
    artist_count # returning the new created hash at line 41 
  end 
end


  

  





