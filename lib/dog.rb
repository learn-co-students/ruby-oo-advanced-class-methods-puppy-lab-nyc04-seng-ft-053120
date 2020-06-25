# Add your code

require 'pry'
class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.print_all
        self.all.each{|pup| puts pup.name}
    end

    def self.clear_all
        self.all.clear
    end

end