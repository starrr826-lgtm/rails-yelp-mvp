# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Creating 5 random restaurants..."
5.times do |i|

  category = categories.sample

  Restaurant.create!(
    name: "#{category.capitalize} Authentic Cuisine",
    address: "#{category.capitalize} Street, No. #{rand(1..10)}",
    phone_number: "09#{rand(10000000..99999999)}",
    category: category
  )
end

puts "Finished!"
