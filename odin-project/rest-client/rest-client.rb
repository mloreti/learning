require 'rest-client'

puts "What's your search query?"

query = gets.chomp

puts "Getting #{query} data from Google"

puts "..."

response = RestClient.get 'http://www.google.com/?q='+query

puts "The response code is: \n#{response.code}"

puts "\nThe response headers is: \n#{response.headers}"

puts "\nThe response cookies is: \n#{response.cookies}"
