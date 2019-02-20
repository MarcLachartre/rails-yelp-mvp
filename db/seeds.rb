# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


le_regent = Restaurant.new(name: "Le Regent", address: "24 rue de la revolution", phone_number: 698765432, category: "italian")
le_regent.save!


CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

require 'faker'

puts 'Creating 100 fake restaurants...'
5.times do
  restaurant = Restaurant.create!(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: CATEGORIES.sample
  )

end
puts 'Finished!'
