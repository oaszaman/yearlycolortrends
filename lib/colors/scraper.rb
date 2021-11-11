class Colors::Scraper

    def scrape_years
        doc = Nokogiri::HTML(open("https://www.pantone.com/color-of-the-year-2021"))
    end

end