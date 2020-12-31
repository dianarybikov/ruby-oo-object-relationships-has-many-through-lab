class Artist 
attr_accessor :name, :genre
    @@all = []

    def initialize name
    @name = name
    @@all << self
    end

    def self.all
    @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
    end
end

    def genre
        Artist.songs.collect do |artist|
            artist.genre 
        end
    end







end
