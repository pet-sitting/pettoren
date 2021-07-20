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
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name:    Faker::Name.name  ,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number:  Faker::PhoneNumber.cell_phone_in_e164,
    avatar_url: ""
  )
  user.save!
end

puts "Creating 3 pets"

peta = Pet.new(
  user: User.all.sample,
  name: "Funky",
  species: "Corgi",
  description: "Funky is very funky."
  )
file = URI.open('https://images.unsplash.com/photo-1557973557-ddfa9ee8c5bf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peta.pet_pic.attach(io: file, filename: 'funky.png', content_type: 'image/png')
peta.save

petb = Pet.new(
  user: User.all.sample,
  name: "Zeke",
  species: "Border Collie",
  description: "Zeke is smart, doesn't like peeing on my pillow."
  )
file = URI.open('https://images.unsplash.com/photo-1568393691622-c7ba131d63b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
petb.pet_pic.attach(io: file, filename: 'funky.png', content_type: 'image/png')
petb.save

petc = Pet.new(
  user: User.all.sample,
  name: "Spot",
  species: "Golden Retriever",
  description: "Spot is very healthy, loves walking and sleeping in the sun."
  )
file = URI.open('https://images.unsplash.com/photo-1588022274210-7aab7c55c631?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petc.pet_pic.attach(io: file, filename: 'spot.png', content_type: 'image/png')
petc.save

puts 'Finished!'
