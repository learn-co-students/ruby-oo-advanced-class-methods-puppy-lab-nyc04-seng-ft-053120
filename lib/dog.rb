# Add your code here

class Dog
    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def self.print_all
        self.all.each { |puppy| puts puppy.name }
    end

    def self.clear_all
        self.all.clear
    end
   
end