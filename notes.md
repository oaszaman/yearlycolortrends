New Idea

Just show the trend reposts for color of the year and NYFW and LFW

First prompt will ask what category and then second will go straight into the answers
which i will somwhow scrape

OLD WAY!!!!

 @@browser = Watir::Browser.new(:chrome, headless: true)

@@browser.goto 'https://www.pantone.com/hk/en/color-of-the-year-2021'
        colors = @@browser.divs(class: 'data-content-type')

        colors.each do |c|
            name = c.text 
            Colors::Years.new(name)
        end

def self.scrape_years
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







------------------------------------------OLD STUFF------------------------------

What is it gonna do?

Collect past year pantone colors and allow the user to choose
which year they want to see, the meaning behind it, and also allow
the users to see the colors for the NYFW and LFW colors that was chosen.

1. Years
2. Colors
3. Few sentences behind why it was chosen and maybe how it impacted the 
culture 
4. Color code it so it stands out.
5. For the NYFW & LFW add the paragraph on why those colors were chosen

Layout 
1. User is greeted and told exactly what the program does
2. Asks user for input regarding years or if they want all years
3. User puts their choice and then it asks if its for the yearly
colors or NYFW and/or LFW
4. User chooses
5. User gets back the info regarding it. 

Classes
1. Colors
2. CLI 
3. Scraper
4. 

Cli.rb
1. get_years
2. list_years
3. get_user_year
4. valid_input
5. show_colors_for(chosen_year)
6. get_user_year(year)
7. get_year_or_fw
8. show_colors_and_info
9. is_that_all
10. log_out

Scraper.rb
1. scrape_years 
2. scrape_colors
3. scrape_key
gather "pagebuilder" class.
p.name
p.year
p.number
div.namenumber

13 spaces

- I dont want it to get straight into the prompt so after the welcome, create something so the user can read it one at a time
