class Owner
  @@all = [] 
  @@count = 0 
  
  def initialize(name)
    @name = name
    @@all << self 
    @@count += 1
  end 
  
  
  def reset_all
    @@all = []
    @@count = 0 
  end 
end