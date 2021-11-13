require 'open-uri'
require 'watir'

class Colors::Scraper

    @@browser = Watir::Browser.new(:chrome, headless: true)


    def self.scrape_colors

        @@browser.goto 'https://www.pantone.com/hk/en/color-of-the-year-2021'
        colors = @@browser.divs(class: 'data-content-type')

        colors.each do |c|
            name = c.text 
            Colors::Years.new(name)
        end

        #doc = Nokogiri::HTML(URI.open("https://www.pantone.com/hk/en/color-of-the-year-2021"))
        #years = doc.css("select#edit-date-filter-month option")
        #binding.pry
        #browser = Watir::Browser.new
        #browser.goto('https://www.pantone.com/hk/en/color-of-the-year-2021')
        #results = browser.element(css: '.year').wait_until(&:present?)
        #results.elements(css: '.year').each do |element|
            #puts element.text.strip
            #holder = element.text
            #Colors::Years.new(holder)
        #end
        #browser.close


        #news = Nokogiri::HTML(js_doc.inner_html)
        #desired_results = doc.css(".year")
        
    end

    #def self.scrape_colors(color)
       # @@browser.goto color.url

    #end

end