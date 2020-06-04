class Record

    attr_accessor :owner
    attr_reader :name, :artist

@@all = []

def initialize(name, owner, artist)
    @name = name
    @artist = artist
    @owner = owner
    @@all << self
end

def self.all
    @@all
end

end