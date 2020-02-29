class Song
    
    attr_accessor :name, :artist, :genre

    @@count = 0 #CLASS VARIABLE
    def self.count #CLASS METHOD
        @@count
    end

    @@genres = [] #CLASS VARIABLE
    def self.genres #CLASS METHOD
        @@genres.uniq #returning a new array with only unique values
    end 

    @@artists = [] #CLASS VARIABLE
    def self.artists #CLASS M
        @@artists.uniq 
    end

    def self.genre_count
        genre_count = {} #why isn't this a class var
        @@genres.each do |genre| #for each genre in the genres array...
            if genre_count[genre] #if it already exists in the array 
                genre_count[genre] += 1 #this is incrementing the value in the key/value pair up 1
            else 
                genre_count[genre] = 1 #this is setting the valuein the key/value pair to 1
            end
        end
        genre_count #return the hash 
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist| #for each artist in the artist array...
            if artist_count[artist] #if it exists
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end
        end
        artist_count
    end 



    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    
end

drunk_in_love = Song.new(
    "drunk in love", "beyonce", "r&b")
ninety_nine_problems = Song.new(
    "99 Problems", "Jay-Z", "rap")
started_from_the_bottom = Song.new(
    "started_from_the_bottom", "drake", "rap"
)
Song.genre_count