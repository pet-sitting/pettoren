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

puts "Creating 10 pets"

peta = Pet.new(
  user: User.all.sample,
  name: "Funky",
  species: "dog",
  breed: "Corgi",
  description: "Funky is very funky."
  )
file = URI.open('https://images.unsplash.com/photo-1557973557-ddfa9ee8c5bf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peta.pet_pic.attach(io: file, filename: 'funky.png', content_type: 'image/png')
peta.save

petb = Pet.new(
  user: User.all.sample,
  name: "Zeke",
  species: "dog",
  breed: "Border Collie",
  description: "Zeke is smart, doesn't like peeing on my pillow."
  )
file = URI.open('https://images.unsplash.com/photo-1568393691622-c7ba131d63b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
petb.pet_pic.attach(io: file, filename: 'funky.png', content_type: 'image/png')
petb.save

petc = Pet.new(
  user: User.all.sample,
  name: "Spot",
  species: "dog",
  breed: "Golden Retriever",
  description: "Spot is very healthy, loves walking and sleeping in the sun."
  )
file = URI.open('https://images.unsplash.com/photo-1588022274210-7aab7c55c631?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petc.pet_pic.attach(io: file, filename: 'spot.png', content_type: 'image/png')
petc.save

petd = Pet.new(
  user: User.all.sample,
  name: "Lucky",
  species: "cat",
  breed: "Shorthair",
  description: "Lucky was not very lucky."
  )
file = URI.open('https://images.unsplash.com/photo-1598567103911-0a2d3d5ebbee?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1661&q=80')
petd.pet_pic.attach(io: file, filename: 'lucky.png', content_type: 'image/png')
petd.save

petz = Pet.new(
  user: User.all.sample,
  name: "Kong",
  species: "cat",
  breed: "Persian",
  description: "Kong is grumpy and very fluffy."
  )
file = URI.open('https://images.unsplash.com/photo-1573148164257-8a2b173be464?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
petz.pet_pic.attach(io: file, filename: 'kong.png', content_type: 'image/png')
petz.save

petf = Pet.new(
  user: User.all.sample,
  name: "Rufus",
  species: "cat",
  breed: "Sphynx",
  description: "Lost his hair in an unfortunate accident."
  )
file = URI.open('https://images.unsplash.com/photo-1520315342629-6ea920342047?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80')
petf.pet_pic.attach(io: file, filename: 'rufus.png', content_type: 'image/png')
petf.save

petg = Pet.new(
  user: User.all.sample,
  name: "Killer",
  species: "dog",
  breed: "Yorkshire Terrier",
  description: "Not as dangerous as he sounds."
  )
file = URI.open('https://images.unsplash.com/photo-1551290464-66719418ca54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1355&q=80')
petg.pet_pic.attach(io: file, filename: 'killer.png', content_type: 'image/png')
petg.save

peth = Pet.new(
  user: User.all.sample,
  name: "ChiChi",
  species: "dog",
  breed: "Chihuahua",
  description: "Very loud sometimes, but gentle."
  )
file = URI.open('https://images.unsplash.com/photo-1566793849773-e1375992cd59?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
peth.pet_pic.attach(io: file, filename: 'chichi.png', content_type: 'image/png')
peth.save

peti = Pet.new(
  user: User.all.sample,
  name: "Bugs",
  species: "rabbit",
  breed: "American",
  description: "Timid, likes carrots and lettuce."
  )
file = URI.open('https://images.unsplash.com/photo-1556838803-cc94986cb631?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peti.pet_pic.attach(io: file, filename: 'bugs.png', content_type: 'image/png')
peti.save

petj = Pet.new(
  user: User.all.sample,
  name: "Eddie",
  species: "dog",
  breed: "Jack Russell",
  description: "Famous for his role in Frasier."
  )
file = URI.open('https://images.unsplash.com/photo-1613029226236-b3c704806aa2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petj.pet_pic.attach(io: file, filename: 'eddie.png', content_type: 'image/png')
petj.save

puts 'Finished!'
