class CLI 
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  list_exhibition
  input = ""
  while input != 0
    menu
    input = gets.chomp.downcase
    if input == "list"  
      list_exhibition
    elsif input == "exit"
      input = 0
    else
      exhibition_info(input.to_i)
    end
  end
  puts "Thank You For Visiting Our Museum!"
  end 
  
  def list_exhibition
    Exhibition.all.each.with_index(1) do |exhibition, index|
      #binding.pry
      puts "#{index}. #{exhibition.title}" 
      end 
  end
  
  def menu
   puts "*****************************************************************"
   puts "Type the number to get more information about paticular exhibition: "
   puts "-----------------------------------------------------------------"
   puts "Type 'list' to show current exhibitions"
   puts "-----------------------------------------------------------------"
   puts  "Type 'exit' to quit"
   puts "*****************************************************************"
    
  end 
  
  def exhibition_info(selection)
    if selection <= Exhibition.all.size && selection > 0 
      index = selection - 1
      obj = Exhibition.all[index]
      puts "Title of the exhibition is: #{obj.title}! "
      puts "The information about currect exhibition is:"
      puts obj.info
    else
      puts "Please enter a valid selection"
    end
  end 
  

end 