class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists =  []
@@genres = []
@@genre_count = {}


def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@genres << genre
  @@count += 1
end
def self.artists
  @@artists.uniq!
end
def self.genres
  @@genres.uniq!
end
def self.genre_count
  @@genres.each do |genre| genre.to_s

end
end

def artist_count
end

def self.count
  @@count


end
end
