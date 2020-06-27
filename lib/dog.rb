# Add your code here

class Dog

    @@all = []

    attr_reader :name
    def initialize(name)
        @name = name
        @save = save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end
    def self.print_all
        Dog.all.each do |doggy|
            puts doggy.name
        end
    end
    def save
       @@all << self
       
    end
end