class CLI 
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  list_exhibition
  puts " Type the number to got more info: "
  input = gets.chomp.to_i 
  while input != 0 
  exhibition_info(input)
  input = gets.chomp.to_i
end 
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
    if selection <= Exhibition.all.size && selection > 0 
      index = selection - 1
      obj = Exhibition.all[index]
      puts "Title of exhibition is #{obj.title}"
      puts "the info about particular exhibition is:"
      puts obj.info
    else
      puts "Please enter a valid selection"
    end
  end 
  
  def exit
    puts "Thank You For Visiting Our Museum!"
  end 
  
  

end 