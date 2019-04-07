class Scraper 
  
  def scrape_page
    html = open("https://www.whitney.org/exhibitions")
    doc = Nokogiri::HTML(html)
    binding.pry
  end 
  
end 
