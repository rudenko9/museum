class Scraper 
  
  def scrape_page
    html = open("https://www.whitney.org/exhibitions")
    doc = Nokogiri::HTML(html)
    doc.css("div.exhibitions").each do |exhibition|
     binding.pry 
    exhib_first_part = exhibition.css("div.exhibitions__featured-list div.list-item")[0..1]
    
    exhib_second_part = exhibition.css(".exhibitions__list").text
     
     
   
     
      
  end
end 
  
end 



 #html = open("https://www.montclairartmuseum.org/exhibitions/on-view")
    #doc = Nokogiri::HTML(html)
    #doc.css("div.view-content").each do |exhibition|