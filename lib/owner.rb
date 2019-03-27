class Owner
  @@all=[]
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.size
  end 
  
  def self.reset_all
    @@all.clear
  end
  
  def initialize(name)
    @@all << self 
  end

end