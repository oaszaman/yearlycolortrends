class Colors::Years

    @@all = ["2021", "2020", "2019", "2018"]
    attr_accessor :holder

    def initialize(holder)
        @holder = holder 
    end

    def self.all
        @@all 
    end

end