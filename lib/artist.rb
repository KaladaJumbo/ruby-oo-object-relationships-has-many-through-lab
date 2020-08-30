require_relative './song.rb'
require_relative 'genre.rb'

class Artist 

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

        Artist.all << self

    end

    def songs

        Song.all.select do |int_song|

            int_song.artist == self

        end

    end

    def new_song(name, genre)

        int_song = Song.new(name, self, genre)
        return int_song

    end

    def genres
       
        self.songs.map do |int_song|

            int_song.genre

        end
        
    end


end