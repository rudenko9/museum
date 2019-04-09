class CLI 
  
  def start 
  puts "Welcome!!!"
  Scraper.new.scrape_page
  menu
  end 
  
  def menu
    Exhibition.all.each.with_index(1) do |exhibition, index|
      puts "#{index}. #{exhibition.exhib}"
    end 
  end

end 