class Scraper 
  
  def scrape_page
    html = open("https://www.montclairartmuseum.org/exhibitions/on-view")
    doc = Nokogiri::HTML(html)
    doc.css("div.view_content").each do |exhibition|
     binding.pry 
      
    #html = open("https://www.whitney.org/exhibitions")
    #doc = Nokogiri::HTML(html)
    #doc.css("div.exhibitions__featured-list").each do |exhibition|
      
  end
end 
  
end 
