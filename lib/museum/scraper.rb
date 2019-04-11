class Scraper 
  
  def scrape_page
    html = open("https://www.montclairartmuseum.org/exhibitions/on-view")
    doc = Nokogiri::HTML(html)
   
    doc.css("div.view-content div").each do |exhibition|
    
      title = exhibition.css("h2").text.strip 
      new_exhibition  = Exhibition.new(title) unless title.empty?
      new_exhibition.info = exhibition.css("p").text unless new_exhibition.nil?
      
      #new_exhibition.url = exhibition.css("div a")["href"]
      #"https://www.montclairartmuseum.org#{exhibition.attribute("href")}"
      
      #binding.pry
   
    
   
   #Exhibition.new(exhib)
     end
end 


  
end 



 