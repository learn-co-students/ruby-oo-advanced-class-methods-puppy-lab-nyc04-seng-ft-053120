# Add your code here
class Dog
    attr_reader :name

    #used to save all the dogs that are instantiated
    @@all = []
    def initialize(name)
        @name = name
        #the instantiated dog will call save
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        #all is the array of dogs that were instantiated
        @@all.each do |dog| #goes through each 
            #print each dog name
            puts dog.name
        end
    end

    def save
        #self refers to the dog that is instantiated
        @@all << self
    end
end