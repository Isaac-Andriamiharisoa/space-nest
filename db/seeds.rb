# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(
  email: "test@email.com",
  created_at: "2023-11-03",
  updated_at: "2023-11-03",
  first_name: "test",
  last_name: "test",
  password: "123456"
)

Planet.destroy_all

Planet.create(
  name: 'Earth',
  details: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s',
  price: 20_000,
  distance: 0,
  temperature: 23,
  user_id: 1
)

Planet.create(
  name: 'Mercury',
  details: 'The closest planet to the Sun, Mercury has extreme temperature variations and a very thin atmosphere.',
  price: 10_000,
  distance: 77_000_000,
  temperature: 100,
  user_id: 1
)

Planet.create(
  name: 'Venus',
  details: 'Venus is known for its thick, toxic atmosphere and extreme surface temperatures, making it the hottest planet in our solar system.',
  price: 15_000,
  distance: 261_000_000,
  temperature: -50,
  user_id: 1
)

Planet.create(
  name: 'Mars',
  details: 'Often called the "Red Planet," Mars is known for its iron-rich soil and potential for supporting future human exploration.',
  price: 20_000,
  distance: 225_000_000,
  temperature: 40,
  user_id: 1
)
