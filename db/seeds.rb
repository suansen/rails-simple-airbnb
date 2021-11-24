# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

10.times do
  flat = Flat.create(
    name: Faker::JapaneseMedia::OnePiece.character,
    address: Faker::Address.street_name,
    description: Faker::JapaneseMedia::OnePiece.quote,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..5)
    )
    puts "#{flat.name} created"

end
