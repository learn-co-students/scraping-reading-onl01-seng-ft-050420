require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
puts doc.css(".headline-26OIBN").text.strip

# The example in the README no longer works as written but I'm using different results
courses = doc.css("#id-3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC") # `#` for id, `.` for class

courses.each do |course| # Iterate over the NodeSet, which Ruby treats like an array
  puts course.text.strip
end