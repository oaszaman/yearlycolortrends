require 'open-uri'

class Colors::Scraper

    def self.scrape_years
        doc = Nokogiri::HTML(URI.open("https://www.pantone.com/color-of-the-year-2021"))
        
        
    end

end