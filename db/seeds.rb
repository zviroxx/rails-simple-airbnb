# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "lorem"
10.times do
  Flat.create(
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    description: "Lorem ipsum Aenean scelerisque nisi id nisl maximus molestie. Duis ornare purus ut dapibus rutrum. Curabitur magna leo, placerat id sodales nec, auctor non sapien. Nunc sodales massa nibh, vitae iaculis neque imperdiet id. Donec rhoncus pulvinar lobortis. Maecenas dignissim tellus et iaculis blandit. Nam dignissim consectetur felis, eu hendrerit magna dapibus ut. Morbi quis molestie augue.",
    price_per_night: (40..60).to_a.sample,
    number_of_guests: (1..4).to_a.sample
  )
end
