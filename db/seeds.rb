# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.destroy_all
recipe1 = Recipe.create(name: "Spagetti Bolognese", description: "Tasty food", image_url:"https://images.pexels.com/photos/28575312/pexels-photo-28575312/free-photo-of-traditional-spaghetti-bolognese-with-fresh-ingredients.jpeg", rating: 5.0)
recipe1.save
recipe2 = Recipe.create(name: "Pizza", description: "Super Bueno !", image_url:"https://images.pexels.com/photos/1566837/pexels-photo-1566837.jpeg", rating: 5.0)
recipe2.save
recipe3 = Recipe.create(name: "McDonalds", description: "I am lovin it!", image_url:"https://images.pexels.com/photos/4109272/pexels-photo-4109272.jpeg", rating: 3.7)
recipe3.save
recipe4 = Recipe.create(name: "Fried Rice", description: "Delicious !", image_url:"https://images.pexels.com/photos/723198/pexels-photo-723198.jpeg", rating: 4.0)
recipe4.save
recipe5 = Recipe.create(name: "Strawberry Milkshake", description: "Sweet !", image_url:"https://images.pexels.com/photos/2424832/pexels-photo-2424832.jpeg", rating: 4.0)
recipe5.save
