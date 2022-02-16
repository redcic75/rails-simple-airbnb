# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Begin seeds.rb'
puts 'Destroy all flats'
Flat.destroy_all

puts 'Generate new flats'

4.times do
  flat = Flat.create(
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: (50..200).to_a.sample,
    number_of_guests: (1..8).to_a.sample
  )
  puts "Generated flat #{flat.id}"
end

puts 'End of seed.rb'
