class CLI 
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  menu
  end 
  
  def menu
    Exhibition.all.each.with_index(1) do |site_name, index|
      #binding.pry
      puts "#{index}. #{site_name.title}" 
      
      
    end 
  end
  
  def exit
    puts "Thank You For Visiting Our Museum!"
  end 
    

end 