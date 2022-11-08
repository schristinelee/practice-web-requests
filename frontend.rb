require "http"

system "clear"
puts "Choose an option:"
puts "[1] Random Fortune"
puts "[2] Lotto Numbers"
puts "[3] Page visit counter"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/fortune_path.json")
  fortune = response.parse["fortune"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/lotto_path.json")
  lotto_numbers = response.parse["lotto_numbers"]
  p lotto_numbers
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/counter_path.json")
  number_of_visits = response.parse["number_of_visits"]
  puts "The number of total visits is #{number_of_visits}"
end
