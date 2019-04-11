class CLI 
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  list_exhibition
  menu
  end 
  
  def list_exhibition
    Exhibition.all.each.with_index(1) do |exhibition, index|
      #binding.pry
      puts "#{index}. #{exhibition.title}" 
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
      elsif (1).to_i
      puts "#{Exhibition.new(title)}"
      menu
    #binding.pry
    
  end   
  end 
  
  
  def exit
    puts "Thank You For Visiting Our Museum!"
  end 
  
  

end 