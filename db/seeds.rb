# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

User.destroy_all
Pet.destroy_all

puts 'Creating 10 fake user...'
10.times do
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name:    Faker::Name.name  ,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number:  Faker::PhoneNumber.cell_phone_in_e164,
    avatar_url: ""
  )
  user.user_pic.attach()
  user.save!
end

puts "Creating 10 pets"
10.times do
  pet = Pet.new(
    user: User.all.sample,
    name: Faker::Name.first_name,
    species: ["dog", "cat", "bird"].sample,
    picture_url: "",
    description: "New cute pet is here"
  )
  pet.save!
end

puts 'Finished!'
