class Scraper 
  
  def scrape_page
    html = open("https://www.whitney.org/exhibitions")
    doc = Nokogiri::HTML(html)
    doc.css("div.exhibitions").each do |exhibition|
     exhib = exhibition.css("section#upcoming").text
     
  #exhib_first_part = exhibition.css("div.exhibitions__featured-list div.list-item")[0..1]
  #exhib_second_part = exhibition.css("div.exhibitions__list div.list-item")[0..1]
  #Exhibition.new(exhib_first_part, exhib_second_part)
   Exhibition.new(exhib)
     end
end 


  
end 



 