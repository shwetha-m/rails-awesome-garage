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
Owner.destroy_all

puts "Creating owners..."

dipesh = Owner.create!(nickname: "Dipesh")
luke = Owner.create!(nickname: "Luke")
edward = Owner.create!(nickname: "Edward")
tara = Owner.create!(nickname: "Tara")

puts "Done! #{Owner.count} Owners created!"

puts "Creating cars..."

Car.create!(
  brand: "Mercedes",
  model: "A-class Hatchback",
  year: 2015,
  fuel: "Unleaded petrol",
  owner: dipesh
)

Car.create!(
  brand: "Audi",
  model: "A6 e‑tron",
  year: 2024,
  fuel: "electric",
  owner: luke
)

Car.create!(
  brand: "Volvo",
  model: "XC90",
  year: 2022,
  fuel: "Hybrid",
  owner: edward
)

Car.create!(
  brand: "Ferrari",
  model: "Testarossa",
  year: 1995,
  fuel: "Diesel",
  owner: tara
)

puts "Done! #{Car.count} Recipes created!"
