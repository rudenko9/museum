class Scraper 
  
  def scrape_page
    html = open("https://www.whitney.org/exhibitions")
    doc = Nokogiri::HTML(html)
    doc.css("div.h1.exhibition__title page-title").each do |exhibition|
    exhib_first_part = exhibition.css(".exhibitions__featured-list").text
    exhib_second_part = exhibition.css(".exhibitions__list").text
     binding.pry
     
   
     
      
  end
end 
  
end 



 #html = open("https://www.montclairartmuseum.org/exhibitions/on-view")
    #doc = Nokogiri::HTML(html)
    #doc.css("div.view-content").each do |exhibition|