class Exhibition 
  attr_accessor  :title, :info  
  
  
  @@all = []
  
  def initialize(title) 
    @title = title
    @@all << self 
    
  end
  
  def self.all
    @@all
  end 
  
end 