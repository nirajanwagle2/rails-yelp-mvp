# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
puts "Destroying all restaurants"
Restaurant.destroy_all

puts "Creating new restaurants"

random_categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: random_categories.sample)
  new_restaurant.save!
end

puts "Created 5 restaurants"
