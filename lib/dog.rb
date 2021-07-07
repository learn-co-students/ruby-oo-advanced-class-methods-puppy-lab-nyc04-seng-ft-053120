require "pry"

class Dog

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.clear_all
    self.all.clear
  end

  def self.print_all
      self.all.map {| i | puts i.name}
  end

  def save
    self.class.all << self
  end

end
