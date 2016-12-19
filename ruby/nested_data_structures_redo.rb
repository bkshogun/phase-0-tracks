bar = [
	vodka = {
	  "Georgi" => 8,
	  "Stoli" => 12,
	  "Grey Goose LV" => 18
	},

	gin = {
	  "Beefeater" => 8,
	  "Hendricks" => 12,
	  "The Botanist" => 15
	  },

	whisky = {
	  "Famous Grouse" => 8,
	  "Johnny Walker Red" => 10,
	  "Macallan 18" => 25
	  },
]

# original data
puts bar

# original data of bar array at index 0
puts bar[0]

# only key data from bar hash at index 0
puts bar[0].keys

# only value data from bar hash at index 1
puts bar[1].values 

puts bar[1].keys[0]

puts bar[2].values[1]

# add key/value pair to nested hash
puts bar[2]
bar[2]["Talisker 18"] = 30
puts bar[2]