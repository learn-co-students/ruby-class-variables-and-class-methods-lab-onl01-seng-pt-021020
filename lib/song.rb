class Song
  attr_accessor :name, :artist, :genre

#Below, we are just creating placeholders
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  #Here, we are creating the class variables, @@count, @@genres, @@artists
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

#Here we are defining a class method, .count
  def self.count
    #return number of songs created
    @@count
  end

#Here we are defining a class method, .artists
  def self.artists
    @@artists.uniq!
  end

#Here we are defining a class method, .genres
  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
