# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
10.times do
  User.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    balance: Faker::Number.between(from: 0.0, to: 20000.0).round(2),
  )
end

User.all.each do |user|
  rand(1..10).times do
    Transaction.create(
      amount: Faker::Number.between(from: -1000.0, to: 1000.0).round(2),
      user_id: user.id,
    )
  end
end
