class Exhibition 
  attr_accessor :exhib 
  #:exhib_first_part, :exhib_second_part
  
  @@all = []
  
  #def initialize(exhib_first_part, exhib_second_part)
   # @exhib_first_part = exhib_first_part
    #@exhib_second_part = exhib_second_part
  def initialize(exhib)  
    @exhib = exhib 
    @@all << self 
    
  end
  
  def self.all
    @@all
  end 
  
end 