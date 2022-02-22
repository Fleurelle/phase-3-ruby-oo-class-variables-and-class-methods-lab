require "pry"

class Song
    attr_accessor :name, :artist, :genre
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

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
        # binding.pry
    end

    def self.genre_count
        genre_list = {}
        @@genres.each do |each_genre|
            if genre_list[each_genre]
                genre_list[each_genre] += 1
            else
                genre_list[each_genre] = 1
            end
        end   
        genre_list
    end
    

    def self.artist_count
        artist_list = {}
        @@artists.each do |each_artist|
            if artist_list[each_artist]
                artist_list[each_artist] += 1
            else
                artist_list[each_artist] = 1
            end
        end
        artist_list
    end
end