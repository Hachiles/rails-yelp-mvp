# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  number = rand(0..4)
  restaurant = Restaurant.new( name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: Restaurant::CATEGORIES[number])
  3.times do
    review = Review.new(rating: rand(0..5), content: Faker::Restaurant.review)
    restaurant.reviews << review
  end
  restaurant.save
end
