# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating movies...'

choux = { title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9 }
bar_centraal = { title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7 }
pazzi = { name: 'Pazzi', address: 'De Clercqstraat 93III, 1053 AG Amsterdam', category: 'italian' }
wolf = { name: 'Cafe Wolf', address: 'Wolvenstraat 22, 1016 EP Amsterdam', category: 'french' }
taste_of_culture = { name: 'Taste of Culture', address: 'Korte Leidsedwarsstraat 139-141, 1017 PZ Amsterdam',
                     category: 'chinese' }

restaurants = [choux, bar_centraal, pazzi, wolf, taste_of_culture]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished'
