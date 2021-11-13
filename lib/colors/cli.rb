
class Colors::CLI
    @@mag="\e[1;35m"
    @@white="\e[0m"
    @@blu="\e[1;34m"
    @@grn="\e[1;32m"
    @@muted="\e[1;31m"

    def opening
        puts "\n#{@@blu}             Welcome to Pantones Yearly Color Trends!#{@@white}\n"
            get_category
            show_category
            gets_users_category
           
            
    end

    def get_category
        # have to scrape these
         @category = ["Color of the Year 2021", "London Fashion Week Spring/Summer 2022", "New York Fashion Week Spring/Summer 2022", "London Fashion Week Autumn/Winter 2021/2022", "New York Fashion Week Autumn/Winter 2021/2022"]
        #@years = Colors::Years.all
    end

    def show_category
        puts "\nChoose the #{@@mag}NUMBER#{@@white} that corresponds with the category you would like to select.\n"
        @category.each.with_index(1) { |index, cat|
            puts "\n     #{@@mag}#{cat}#{@@white}. #{index}\n"
    }
        puts "#{@@muted}↓#{@@white}"
    end

    def gets_users_category
        collection_of_categories = gets.strip.to_i
        show_colors_for(collection_of_categories) if valid_input(collection_of_categories, @category)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end

    def show_colors_for(collection_of_categories)
        #put class from scraper
        category = @category[collection_of_categories - 1]
        puts "\n#{@@blu}Here are the colors selected by Pantone for #{category}.#{@@white}\n"
        @category = Colors::Years.all
        puts @category
    end





    def ending_statement
        puts "Hope you enjoyed!"
    end

    
end