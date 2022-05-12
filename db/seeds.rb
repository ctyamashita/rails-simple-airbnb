# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting old records...'
Flat.destroy_all

puts 'Seeding'
30.times do
  Flat.create(
    name: Faker::Lorem.sentence,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(1000..20_000),
    number_of_guests: rand(2..8)
  )
end

puts "#{Flat.count} flats created."
