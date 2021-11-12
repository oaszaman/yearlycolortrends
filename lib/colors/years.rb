class Colors::Years

    @@all = []
    attr_accessor :holder

    def initialize(holder)
        @holder = holder 
        save 
    end

    def self.all
        Colors::Scraper.scrape_years if @@all.empty?
        @@all 
    end

    def save 
        @@all << self
    end
end