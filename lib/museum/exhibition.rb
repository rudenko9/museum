class Exhibition 
  attr_accessor :exhibit_first_part, :exhibit_second_part
  @@all = []
  def initialize(exhibit_first_part, exhibit_second_part)
    @exhibit_first_part = exhibit_first_part
    @exhibit_second_part = exhibit_second_part
    
    @@all << self 
  end
  
  def self.all
    @@all
  end 
  
end 