class Scraper 
  
  def scrape_page
    html = open("https://www.montclairartmuseum.org/exhibitions/on-view")
    doc = Nokogiri::HTML(html)
   
    doc.css("div.view-content div").each do |exhibition|
    
      title = exhibition.css("h2").text.strip 
      binding.pry
   
    
   
   #Exhibition.new(exhib)
     end
end 


  
end 



 