require 'pry'
# Add your code here
class Dog
    attr_reader :name

    @@all =[]

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        self.all.each do |doggy|
            puts "#{doggy.name}"
        end
    end
    # binding.pry

    def save
        @@all << self
    end
end