require 'pry'
class Dog
    attr_reader :name

@@all = []

def initialize(name)
    @name = name
    save
end

def self.all
    @@all
end

def self.clear_all
    @@all.clear
end

def self.print_all
    #binding.pry
    self.all.each { |dog| puts dog.name }
end

def save
    @@all << self
end


end
# Add your code here

