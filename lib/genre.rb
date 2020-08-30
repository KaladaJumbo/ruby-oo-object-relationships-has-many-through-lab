require_relative './song.rb'
require_relative './artist.rb'

class Genre

    attr_accessor :name
    @@all = []

    def initialize (name)

        @name = name
        self.save 

    end

    def self.all

        @@all

    end

    def save 

        Genre.all << self

    end

    def songs

        Song.all.select do |int_song|

            int_song.genre == self

        end

    end

    def artists

        self.songs.map do |int_song|

            int_song.artist

        end

    end
    
end