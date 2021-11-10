
class Colors::CLI
    @@mag="\e[1;35m"
    @@white="\e[0m"
    @@blu="\e[1;34m"

    def opening
        puts "\n#{@@blu}Welcome to Pantones Yearly Color Trends!#{@@white}\n"
            show_years
            gets_user_years
    end

    def show_years
        # have to scrape these
        puts "\nChoose a year to see colors\n"
        @months = ["2021", "2020", "2019"]
    end

    def gets_user_years
        @months.each.with_index(1) { |index, month|
            puts "     #{@@blu}#{month}#{@@white}. #{index}"
    }
    end

    def ending_statement
        puts "Hope you enjoyed!"
    end

    
end