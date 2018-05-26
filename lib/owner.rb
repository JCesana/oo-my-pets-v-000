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