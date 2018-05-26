class Owner
  @@all = [] 
  @@count = 0 
  attr_accessor :name 
  attr_reader :species 
  
  def initialize(species)
    @species = species
    @@all << self 
    @@count += 1
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  
  def name 
    @name 
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