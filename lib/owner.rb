require "pry"

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"

    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear()
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets[:dogs].each { |dog| dog.mood = "nervous" }
    self.pets[:cats].each { |cat| cat.mood = "nervous" }
    self.pets[:fishes].each { |fish| fish.mood = "nervous" }
    self.pets.clear
  end

  def list_pets
    dogs = []
    cats = []
    fishes = []
    self.pets[:dogs].each do |dog|
      dogs << dog
    end
    self.pets[:cats].each do |cat|
      cats << cat
    end
    self.pets[:fishes].each do |fish|
      fishes << fish
    end
    return "I have #{fishes.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end # end of owner class
