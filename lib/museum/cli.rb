class CLI 
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  list_exhibition
  menu
  end 
  
  def list_exhibition
    Exhibition.all.each.with_index(1) do |site_name, index|
      #binding.pry
      puts "#{index}. #{site_name.title}" 
      end 
  end
  
  def menu
    puts ""
    input = gets.strip.downcase
    if input == "list"
      list_exhibition
      menu
      elsif input == "exit"
      exit
      elsif     
    
    
  end   
  end 
  
  
  def exit
    puts "Thank You For Visiting Our Museum!"
  end 
    

end 