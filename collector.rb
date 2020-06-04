class Collector

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def record_collection
        Record.all.select do |record|
            record.owner == self
        end
    end

    #Question: What if our enumerable resolves to an empty array or nil? IE, if a friend comes over and says "Hey do you
    #have 808's and Heartbreaks on record?" and record_by_name returns nil, how can I use that to serve an error?

    def records_by_artist(artist)
        self.record_collection.map do |record|
            record.owner == artist
        end
    end

    def record_by_name(name)
        self.record_collection.find do |record|
            record.name == name
        end
    end

end