require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @genre = genre
        @artist = artist
        @name = name
        @@count += 1
        @@genres << genre
        @@artists << artist    
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genre_count = @@genres.tally
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

binding.pry

