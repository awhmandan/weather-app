require 'yahoo_weatherman'

puts 'Please enter your city or postcode'
location = gets.to_s

client = Weatherman::Client.new

result = client.lookup_by_location(location).condition['text']

if result = 'fair'
		puts "#{result} - it's ok out there!"
	elsif result = 'rain'
		puts "#{result} - get the umbrella guys"
	elsif result = 'snow'
		puts "#{result} - everyone's favourite - wrap up warm!"
	end
