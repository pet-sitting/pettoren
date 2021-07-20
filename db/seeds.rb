# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


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
    avatar_url: "https://res.cloudinary.com/ellie-xyb/image/upload/v1626789695/photo-1605001011156-cbf0b0f67a51_ywjezr.jpg"
  )
  user.save!
end

puts "Creating 10 pets"

Pet.create!(
  user: User.all.sample,
  name: "Spot",
  species: "Golden Retriever",
  picture_url: "https://res.cloudinary.com/ellie-xyb/image/upload/v1626789824/photo-1588022274210-7aab7c55c631_vwmy8x.jpg",
  description: "Spot is very healthy, loves walking and sleeping in the sun."
)

Pet.create!(
  user: User.all.sample,
  name: "Zeke",
  species: "Border Collie",
  picture_url: "https://res.cloudinary.com/ellie-xyb/image/upload/v1626790385/photo-1568393691622-c7ba131d63b4_v8kkxp.jpg",
  description: "Zeke is smart, doesn't like peeing on my pillow."
)


puts 'Finished!'
