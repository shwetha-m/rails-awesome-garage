# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB"
Car.destroy_all

puts "Creating cars..."

Car.create!(
  brand: "Mercedes",
  model: "A-class Hatchback",
  year: 2015,
  fuel: "Unleaded petrol",
  owner_id: 2
)

Car.create!(
  brand: "Audi",
  model: "A6 e‑tron",
  year: 2024,
  fuel: "electric",
  owner_id: 1
)

Car.create!(
  brand: "Volvo",
  model: "XC90",
  year: 2022,
  fuel: "Hybrid",
  owner_id: 3
)

puts "Done! #{Car.count} Recipes created!"
