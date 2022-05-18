require 'faker'

puts 'Droping database'

Flat.destroy_all

puts 'Destroyed !'
puts 'Add 10 new flats'

10.times do
  Flat.create(
    name: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    price_per_night: %w[10 15 20 25 30 35 40 45 50].sample,
    number_of_guests: %w[1 2 3 4].sample
  )
end
