# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all
puts "Creating restaurants..."
flat1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat2 = {
  name: 'St Pancras Clock Tower Guest Suite',
  address: 'Euston Rd London N1C 4QP',
  description: 'Luxurious suite in the center of London, perfect for couples',
  price_per_night: 200,
  number_of_guests: 2
}

flat3 = {
  name: 'Big Ben Overlooking Apartment',
  address: 'Big Ben Road 404',
  description: 'Hope Big Ben does not burn',
  price_per_night: 300,
  number_of_guests: 2
}

flat4 = {
  name: 'Buckingham Palace',
  address: 'Buckingham Palace',
  description: 'Not your average hotel, breakfast with the Queen',
  price_per_night: 2000,
  number_of_guests: 2
}

[ flat1, flat2, flat3, flat4 ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
