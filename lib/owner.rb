class Owner
  @@all = [] 
  @@count = 0 
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat 
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end 
  
  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end 
  
  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end 
  
  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }  
  end 
  
  def sell_pets
    @pets[:dogs].each { |dog| dog.mood = "nervous" }
    @pets[:cats].each { |cat| cat.mood = "nervous" }
    @pets[:fishes].each { |fish| fish.mood = "nervous" }
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
    
  end 
  def say_species
    "I am a #{@species}."
  end 

  def self.all
    @all
  end 
  
  def self.count 
    @count 
  end 
  
  def reset_all
    @@all = []
    @@count = 0 
  end 
end