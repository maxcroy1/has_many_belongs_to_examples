class Record

    attr_accessor :collector
    attr_reader :name, :artist

@@all = []

def initialize(name, collector, artist)
    @name = name
    @artist = artist
    @collector = collector
    @@all << self
end

def self.all
    @@all
end

end