# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
require 'faker'
# Créez des utilisateurs
10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Créez des gossips associés aux utilisateurs
User.all.each do |user|
  20.times do
    user.gossips.create(
      content: Faker::Lorem.sentence,
      year: Faker::Number.between(from: 2000, to: 2023)
    )
  end
end
