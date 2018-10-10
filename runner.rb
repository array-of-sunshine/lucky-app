require 'unirest'

response = Unirest.get("localhost:3000/lotto_nums")

p response.body
