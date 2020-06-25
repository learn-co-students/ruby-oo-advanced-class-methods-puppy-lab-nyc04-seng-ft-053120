# Add your code here
class Dog
    attr_accessor :name
    @@all = []
    def initialize(name)
       @name = name
       #binding.pry
       self.save
    end
    def self.all
        @@all
    end
def self.clear_all
    @@all.clear
end
def self.print_all
   @@all.each do |animal|
  puts "#{animal.name}"
end
end
def save
@@all << self
end
end
