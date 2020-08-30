require_relative './artist.rb'
require_relative './genre.rb'

class Song

    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize (name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre
        self.save 

    end

    def self.all

        @@all

    end

    def save 

        Song.all << self

    end
end