class Owner
  attr_reader :species
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
  
  def initialize(species)
    @species=species
    @@all << self 
  end
  
  def say_species
    puts "I am a #{@species}"
  end

end