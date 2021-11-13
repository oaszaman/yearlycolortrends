class Colors::Years

    @@all = []
    attr_accessor :name
    attr_reader :url

    def initialize(name)
        @name = name
        save 
    end

    def self.all
        Colors::Scraper.scrape_colors if @@all.empty?
        @@all 
    end

    def save 
        @@all << self
    end
end