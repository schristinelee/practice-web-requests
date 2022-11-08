require "http"

system "clear"

while true
  system "clear"
  puts "Welcome to Christine's dictionary app!"
  puts "Please enter a word: "
  word = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=APIKEY")

  definition = response.parse(:json)[0]["text"]

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=APIKEY")

  top_example = response.parse(:json)["text"]

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=APIKEY")

  pronounciation = response.parse(:json)[0]["raw"]

  puts "The definition of #{word} is #{definition}. The top example is: #{top_example}. You can pronounce the word like this: #{pronounciation}."

  puts "Enter q to quit, any other key to continue."
  input_option = gets.chomp
  if input_option == "q"
    puts "thank you, goodbye."
    break
  end
end
