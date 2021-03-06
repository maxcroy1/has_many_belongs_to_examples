class Collector

    attr_reader :name

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
            record.collector == self
        end
    end

    #Question: What if our enumerable resolves to an empty array or nil? IE, if a friend comes over and says "Hey do you
    #have 808's and Heartbreaks on record?" and record_by_name returns nil, how can I use that to serve an error?

    def records_by_artist(record_artist)
        self.record_collection.select do |record|
            record.artist == record_artist
        end
    end

    def record_by_name(name)
        self.record_collection.find do |record|
            record.name == name
        end
    end

end