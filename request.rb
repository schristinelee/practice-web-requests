require "http"

response = HTTP.get("http://data.cityofchicago.org/resource/xzkq-xp2w.json")

pp response.parse(:json)

