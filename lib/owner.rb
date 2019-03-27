class Owner
  attr_reader :species, :pets
  attr_accessor :name
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
    @pets={fish:[], cats:[], dog:[]}
    @@all << self 
  end
  
  def say_species
    "I am a #{@species}."
  end

end