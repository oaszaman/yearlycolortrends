
class Colors::CLI
    @@mag="\e[1;35m"
    @@white="\e[0m"
    @@blu="\e[1;34m"
    @@grn="\e[1;32m"
    @@muted="\e[1;31m"

    def opening
        puts "\n#{@@blu}             Welcome to Pantones Yearly Color Trends!#{@@white}\n"
            get_years
            show_years
            gets_users_year
            
    end

    def get_years
        # have to scrape these
         @years = ["2021", "2020", "2019"]
        #@years = Colors::Years.all
    end

    def show_years
        puts "\nChoose the #{@@mag}NUMBER#{@@white} that corresponds with the year you would like to select.\n"
        @years.each.with_index(1) { |index, month|
            puts "     #{@@mag}#{month}#{@@white}. #{index}"
    }
        puts "#{@@muted}↓#{@@white}"
    end

    def gets_users_year
        collection_of_years = gets.strip.to_i
        show_colors_for(collection_of_years) if valid_input(collection_of_years, @years)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end

    def show_colors_for(collection_of_years)
        year = @years[collection_of_years - 1]
        puts "\n#{@@blu}             Here are the colors selected by Pantone for #{year}.#{@@white}\n"
    end

    def ending_statement
        puts "Hope you enjoyed!"
    end

    
end