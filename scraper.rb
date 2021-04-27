require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(URI.open("https://anilist.co/search/anime/popular/"))
puts doc

titles = doc.css(".title")
puts titles

result = titles.map {|anime| anime.text.strip}
p result

