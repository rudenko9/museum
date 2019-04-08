class Scraper 
  
  def scrape_page
    #html = open("https://www.whitney.org/exhibitions")
    #doc = Nokogiri::HTML(html)
    #doc.css("div.exhibitions__featured-list").each do |exhibition|
    html = open("https://www.montclairartmuseum.org/exhibitions/on-view")
    doc = Nokogiri::HTML(html)
    doc.css("div.view-content").each do |exhibition|
     binding.pry
      
  end
end 
  
end 
