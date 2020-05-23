require 'nokogiri'
require 'open-uri'

#html = open("https://flatironschool.com/") #grabs the HTML that makes up the flatiron school's landing page
#Nokogiri::HTML(html) #converts the string into a nodeset
#doc = Nokogiri::HTML(html)

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN")

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses.each do |course|
  puts course.text.strip
end
