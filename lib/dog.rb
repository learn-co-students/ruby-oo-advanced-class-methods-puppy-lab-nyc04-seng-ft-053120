# Add your code here
class Dog
    @@all = []
    attr_reader :name
    def initialize (name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.print_all
        self.all.each do |doggo|
            puts doggo.name
        end
    end
    def self.clear_all
        self.all.clear
    end

end