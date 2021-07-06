class Song

  @@count = 0 #setting the count of the songs

  @@genres = []
  @@artists = []


  def initialize(name, artist, genre) #this assigns each new Song with a name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1    #this adds one number to the count, each time a song is added
    @@genres << @genre
    @@artists << @artist
  end

attr_accessor :name, :artist, :genre #this sets the name, artist, and genre setter/getter

  def self.genres
    @@genres.uniq! #uniq! removes the duplicates
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    Hash[@@genres.group_by{|x|x}.map{|x,y|[x,y.size]}] #not sure how this code works. Need help 
  end

  def self.artist_count
    Hash[@@artists.group_by{|x|x}.map{|x,y|[x,y.size]}]
  end

  def self.count
    @@count
  end
end
