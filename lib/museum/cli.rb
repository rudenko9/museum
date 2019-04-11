class CLI 
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  list_exhibition
  puts " Type the number to got more info: "
  input gets.chomp.to_i 
  while input != 0 
  list_exhibition
  
  end 
  
  def list_exhibition
    Exhibition.all.each.with_index(1) do |exhibition, index|
      #binding.pry
      puts "#{index}. #{exhibition.title}" 
      end 
  end
  
  def menu
   
    
  end 
  
  def exhibition_info(selection)
    selection -= 1
    obj = Exhibition.all[selection]
    puts "Title of exhibition is #{obj.title}"
    puts "the info about particular exhibition is:"
    puts obj.info
    
  end 
  
  def exit
    puts "Thank You For Visiting Our Museum!"
  end 
  
  

end 