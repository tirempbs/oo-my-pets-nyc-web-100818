require "pry"

class Cat
  attr_accessor :mood
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"

    @@all << self
  end

  def self.all
    @@all
  end
end # end of cat class
