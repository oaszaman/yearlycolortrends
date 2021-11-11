class Colors::Years

    @@all = []
    attr_accessor :holder

    def initialize(holder)
        @holder = holder 
        save 
    end

    def self.all
        @@all 
    end

    def save 
        @@all << self
    end
end