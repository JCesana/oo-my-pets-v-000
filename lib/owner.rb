class Owner
  @@all = [] 
  @@count = 0 
  
  def initialize(name)
    @name = name 
  end 
  
  
  def reset_all
    @@all = []
    @@count = 0 
  end 
end