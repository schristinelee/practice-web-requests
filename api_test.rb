require "http"

system "clear"

response = HTTP.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita")
