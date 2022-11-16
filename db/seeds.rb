# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
puts "cleaning DB.."

Restaurant.destroy_all

puts "populating DB with restaurants..."

16.times do
  new_restaurant = Restaurant.create!(name: Faker::Restaurant.name,
                                     address: Faker::Address.street_address,
                                     category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
                                     phone_number: "01763151724")

  puts "#{new_restaurant.id} was sucessfully create!"
end

puts "done."
