class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
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
    genre_count_hash = {}
    
    for genre in self.genres do
      genre_count_hash[genre] = @@genres.count(genre)
    end
    
    genre_count_hash
  end
  
  def self.artist_count
    artist_count_hash = {}
    
    for artist in self.artists do
      artist_count_hash[artist] = @@artists.count(artist)
    end
    
    artist_count_hash
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
end