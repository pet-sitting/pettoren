# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Booking.destroy_all
PetSchedule.destroy_all
Pet.destroy_all
User.destroy_all

puts 'Creating 10 fake user...'
# 10.times do
#   user = User.new(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     name:    Faker::Name.name,
#     # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     address: "2 Chome-7-3 Chuocho, Meguro City, Tokyo 152-0001",
#     phone_number:  Faker::PhoneNumber.cell_phone_in_e164
#   )
#   user.save!
# end

user_a = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name:    Faker::Name.name,
    # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    address: "2-7-3 Chuocho, Meguro City, Tokyo",
    phone_number:  Faker::PhoneNumber.cell_phone_in_e164
  )
  user_a.save!
  puts "User A created!"

user_b = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "2-6-10 Shirokanedai, Minato City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_b.save!
puts "User B created!"

user_c = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "5-8-5 Daizawa, Setagaya City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_c.save!
puts "User C created!"

user_d = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "2-1-20 Kakinokizaka, Meguro City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_d.save!
puts "User D created!"

user_e = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "1-3-6 Yakumo, Meguro City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_e.save!
puts "User E created!"

user_f = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "1-10-8 Nakai, Shinjuku City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_f.save!
puts "User F created!"

user_g = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "1-2-5 Ikebukuro, Toshima City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_g.save!
puts "User G created!"

user_h = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "1-5-19 Meguro, Meguro City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_h.save!
puts "User H created!"

user_i = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "1-14-17 Aobadai, Meguro City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_i.save!
puts "User I created!"

user_j = User.new(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  name:    Faker::Name.name,
  # address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  address: "3-1-10 Tsukiji, Chuo City, Tokyo",
  phone_number:  Faker::PhoneNumber.cell_phone_in_e164
)
user_j.save!
puts "User J created!"

puts "Creating 10 pets"

peta = Pet.new(
  user: User.all.sample,
  name: "Funky",
  species: "dog",
  breed: "Corgi",
  description: "Funky is very funky."
  )
fileaa = URI.open('https://images.unsplash.com/photo-1557973557-ddfa9ee8c5bf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peta.pet_pics.attach(io: fileaa, filename: 'funkya.png', content_type: 'image/png')
fileab = URI.open('https://images.unsplash.com/photo-1623513040995-811ad0c34514?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
peta.pet_pics.attach(io: fileab, filename: 'funkyb.png', content_type: 'image/png')
fileac = URI.open('https://images.unsplash.com/photo-1589965716319-4a041b58fa8a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peta.pet_pics.attach(io: fileac, filename: 'funkyc.png', content_type: 'image/png')
peta.save
PetSchedule.create(date: '2021-7-24', pet: peta);
PetSchedule.create(date: '2021-7-25', pet: peta);
PetSchedule.create(date: '2021-7-27', pet: peta);
PetSchedule.create(date: '2021-7-28', pet: peta);
PetSchedule.create(date: '2021-7-31', pet: peta);
PetSchedule.create(date: '2021-8-8', pet: peta);
PetSchedule.create(date: '2021-8-9', pet: peta);
PetSchedule.create(date: '2021-8-10', pet: peta);
puts "Pet A created!"

petb = Pet.new(
  user: User.all.sample,
  name: "Zeke",
  species: "dog",
  breed: "Border Collie",
  description: "Zeke is smart, doesn't like peeing on my pillow."
  )
fileba = URI.open('https://images.unsplash.com/photo-1568393691622-c7ba131d63b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
petb.pet_pics.attach(io: fileba, filename: 'zekea.png', content_type: 'image/png')
filebb = URI.open('https://images.unsplash.com/photo-1587131789767-bdb242897f31?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
petb.pet_pics.attach(io: filebb, filename: 'zekeb.png', content_type: 'image/png')
filebc = URI.open('https://images.unsplash.com/photo-1602973901442-8ad0e9b65bdd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1269&q=80')
petb.pet_pics.attach(io: filebc, filename: 'zekec.png', content_type: 'image/png')
filebd = URI.open('https://images.unsplash.com/reserve/UzWklzFdRBSbkRKhEnvc_1-6128.jpg?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petb.pet_pics.attach(io: filebd, filename: 'zeked.png', content_type: 'image/png')
petb.save
PetSchedule.create(date: '2021-7-25', pet: petb);
PetSchedule.create(date: '2021-7-26', pet: petb);
PetSchedule.create(date: '2021-7-30', pet: petb);
PetSchedule.create(date: '2021-8-31', pet: petb);
PetSchedule.create(date: '2021-8-1', pet: petb);
PetSchedule.create(date: '2021-8-2', pet: petb);
PetSchedule.create(date: '2021-8-7', pet: petb);
PetSchedule.create(date: '2021-8-8', pet: petb);
puts "Pet B created!"

petc = Pet.new(
  user: User.all.sample,
  name: "Spot",
  species: "dog",
  breed: "Golden Retriever",
  description: "Spot is very healthy, loves walking and sleeping in the sun."
  )
fileca = URI.open('https://images.unsplash.com/photo-1588022274210-7aab7c55c631?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petc.pet_pics.attach(io: fileca, filename: 'spota.png', content_type: 'image/png')
filecb = URI.open('https://images.unsplash.com/photo-1609791636587-50feca5caee7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petc.pet_pics.attach(io: filecb, filename: 'spotb.png', content_type: 'image/png')
filecc = URI.open('https://images.unsplash.com/photo-1611250282006-4484dd3fba6b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
petc.pet_pics.attach(io: filecc, filename: 'spotc.png', content_type: 'image/png')
filecd = URI.open('https://images.unsplash.com/photo-1621012101981-235752aaa7ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petc.pet_pics.attach(io: filecd, filename: 'spotd.png', content_type: 'image/png')
petc.save
PetSchedule.create(date: '2021-7-24', pet: petc);
PetSchedule.create(date: '2021-7-25', pet: petc);
PetSchedule.create(date: '2021-7-27', pet: petc);
PetSchedule.create(date: '2021-7-28', pet: petc);
PetSchedule.create(date: '2021-8-2', pet: petc);
PetSchedule.create(date: '2021-8-5', pet: petc);
PetSchedule.create(date: '2021-8-6', pet: petc);
PetSchedule.create(date: '2021-8-7', pet: petc);
puts "Pet C created!"

petd = Pet.new(
  user: User.all.sample,
  name: "Lucky",
  species: "cat",
  breed: "Shorthair",
  description: "Lucky was not very lucky."
  )
fileda = URI.open('https://images.unsplash.com/photo-1598567103911-0a2d3d5ebbee?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1661&q=80')
petd.pet_pics.attach(io: fileda, filename: 'luckya.png', content_type: 'image/png')
filedb = URI.open('https://images.unsplash.com/photo-1601808881948-aa68248b1df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petd.pet_pics.attach(io: filedb, filename: 'luckyb.png', content_type: 'image/png')
filedc = URI.open('https://images.unsplash.com/photo-1602884954603-6080b9d4c378?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petd.pet_pics.attach(io: filedc, filename: 'luckyc.png', content_type: 'image/png')
filedd = URI.open('https://images.unsplash.com/photo-1581460000963-755eec994cf0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petd.pet_pics.attach(io: filedd, filename: 'luckyd.png', content_type: 'image/png')
petd.save
PetSchedule.create(date: '2021-7-30', pet: petd);
PetSchedule.create(date: '2021-7-31', pet: petd);
PetSchedule.create(date: '2021-8-5', pet: petd);
PetSchedule.create(date: '2021-8-11', pet: petd);
PetSchedule.create(date: '2021-8-12', pet: petd);
PetSchedule.create(date: '2021-8-15', pet: petd);
PetSchedule.create(date: '2021-8-18', pet: petd);
PetSchedule.create(date: '2021-8-19', pet: petd);
puts "Pet D created!"

pete = Pet.new(
  user: User.all.sample,
  name: "Kong",
  species: "cat",
  breed: "Persian",
  description: "Kong is grumpy and very fluffy."
  )
fileea = URI.open('https://images.unsplash.com/photo-1573148164257-8a2b173be464?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
pete.pet_pics.attach(io: fileea, filename: 'konga.png', content_type: 'image/png')
fileeb = URI.open('https://images.unsplash.com/photo-1614538899890-1a0d25d62e22?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80')
pete.pet_pics.attach(io: fileeb, filename: 'kongb.png', content_type: 'image/png')
fileec = URI.open('https://images.unsplash.com/photo-1620819436738-d830e5a46f63?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
pete.pet_pics.attach(io: fileec, filename: 'kongc.png', content_type: 'image/png')
fileed = URI.open('https://images.unsplash.com/photo-1577239559255-12a0a0fb92eb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
pete.pet_pics.attach(io: fileed, filename: 'kongd.png', content_type: 'image/png')
pete.save
PetSchedule.create(date: '2021-7-24', pet: pete);
PetSchedule.create(date: '2021-7-25', pet: pete);
PetSchedule.create(date: '2021-7-29', pet: pete);
PetSchedule.create(date: '2021-7-30', pet: pete);
PetSchedule.create(date: '2021-7-31', pet: pete);
PetSchedule.create(date: '2021-8-3', pet: pete);
PetSchedule.create(date: '2021-8-18', pet: pete);
PetSchedule.create(date: '2021-8-19', pet: pete);
puts "Pet E created!"

petf = Pet.new(
  user: User.all.sample,
  name: "Rufus",
  species: "cat",
  breed: "Sphynx",
  description: "Lost his hair in an unfortunate accident."
  )
filefa = URI.open('https://images.unsplash.com/photo-1520315342629-6ea920342047?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80')
petf.pet_pics.attach(io: filefa, filename: 'rufusa.png', content_type: 'image/png')
filefb = URI.open('https://images.unsplash.com/photo-1607623488981-3b72c361204f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petf.pet_pics.attach(io: filefb, filename: 'rufusb.png', content_type: 'image/png')
filefc = URI.open('https://images.unsplash.com/photo-1530391277665-49655f7b0b90?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petf.pet_pics.attach(io: filefc, filename: 'rufusc.png', content_type: 'image/png')
petf.save
PetSchedule.create(date: '2021-7-24', pet: petf);
PetSchedule.create(date: '2021-7-28', pet: petf);
PetSchedule.create(date: '2021-7-29', pet: petf);
PetSchedule.create(date: '2021-8-1', pet: petf);
PetSchedule.create(date: '2021-8-2', pet: petf);
PetSchedule.create(date: '2021-8-3', pet: petf);
PetSchedule.create(date: '2021-8-15', pet: petf);
PetSchedule.create(date: '2021-8-16', pet: petf);
puts "Pet F created!"

petg = Pet.new(
  user: User.all.sample,
  name: "Killer",
  species: "dog",
  breed: "Yorkshire Terrier",
  description: "Not as dangerous as he sounds."
  )
filega = URI.open('https://images.unsplash.com/photo-1551290464-66719418ca54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1355&q=80')
petg.pet_pics.attach(io: filega, filename: 'killera.png', content_type: 'image/png')
filegb = URI.open('https://images.unsplash.com/photo-1547482354-89d4259dbc4b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petg.pet_pics.attach(io: filegb, filename: 'killerb.png', content_type: 'image/png')
filegc = URI.open('https://images.unsplash.com/photo-1618760877592-0d80e8b7bd02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petg.pet_pics.attach(io: filegc, filename: 'killerc.png', content_type: 'image/png')
filegd = URI.open('https://images.unsplash.com/photo-1443806798002-651c462956ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1352&q=80')
petg.pet_pics.attach(io: filegd, filename: 'killerd.png', content_type: 'image/png')
petg.save
PetSchedule.create(date: '2021-7-25', pet: petg);
PetSchedule.create(date: '2021-7-27', pet: petg);
PetSchedule.create(date: '2021-7-29', pet: petg);
PetSchedule.create(date: '2021-8-6', pet: petg);
PetSchedule.create(date: '2021-8-7', pet: petg);
PetSchedule.create(date: '2021-8-15', pet: petg);
PetSchedule.create(date: '2021-8-18', pet: petg);
PetSchedule.create(date: '2021-8-19', pet: petg);
puts "Pet G created!"

peth = Pet.new(
  user: User.all.sample,
  name: "ChiChi",
  species: "dog",
  breed: "Chihuahua",
  description: "Very loud sometimes, but gentle."
  )
fileha = URI.open('https://images.unsplash.com/photo-1566793849773-e1375992cd59?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
peth.pet_pics.attach(io: fileha, filename: 'chichia.png', content_type: 'image/png')
filehb = URI.open('https://images.unsplash.com/photo-1598283027164-ce17967a47d5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
peth.pet_pics.attach(io: filehb, filename: 'chichib.png', content_type: 'image/png')
filehc = URI.open('https://images.unsplash.com/photo-1564510015443-605afdb7dcbb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
peth.pet_pics.attach(io: filehc, filename: 'chichic.png', content_type: 'image/png')
filehd = URI.open('https://images.unsplash.com/photo-1559681369-e8b09c685cf2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80')
peth.pet_pics.attach(io: filehd, filename: 'chichid.png', content_type: 'image/png')
peth.save
PetSchedule.create(date: '2021-7-27', pet: peth);
PetSchedule.create(date: '2021-7-28', pet: peth);
PetSchedule.create(date: '2021-7-29', pet: peth);
PetSchedule.create(date: '2021-8-1', pet: peth);
PetSchedule.create(date: '2021-8-2', pet: peth);
PetSchedule.create(date: '2021-8-15', pet: peth);
PetSchedule.create(date: '2021-8-18', pet: peth);
PetSchedule.create(date: '2021-8-19', pet: peth);
puts "Pet H created!"

peti = Pet.new(
  user: User.all.sample,
  name: "Bugs",
  species: "rabbit",
  breed: "American",
  description: "Timid, likes carrots and lettuce."
  )
fileia = URI.open('https://images.unsplash.com/photo-1556838803-cc94986cb631?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peti.pet_pics.attach(io: fileia, filename: 'bugsa.png', content_type: 'image/png')
fileib = URI.open('https://images.unsplash.com/photo-1469532804526-98aa275b657c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1349&q=80')
peti.pet_pics.attach(io: fileib, filename: 'bugsb.png', content_type: 'image/png')
fileic = URI.open('https://images.unsplash.com/photo-1585969646097-a1b0038c37a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
peti.pet_pics.attach(io: fileic, filename: 'bugsc.png', content_type: 'image/png')
peti.save
PetSchedule.create(date: '2021-7-28', pet: peti);
PetSchedule.create(date: '2021-7-29', pet: peti);
PetSchedule.create(date: '2021-7-30', pet: peti);
PetSchedule.create(date: '2021-8-2', pet: peti);
PetSchedule.create(date: '2021-8-3', pet: peti);
PetSchedule.create(date: '2021-8-4', pet: peti);
PetSchedule.create(date: '2021-8-5', pet: peti);
PetSchedule.create(date: '2021-8-6', pet: peti);
puts "Pet I created!"

petj = Pet.new(
  user: User.all.sample,
  name: "Eddie",
  species: "dog",
  breed: "Jack Russell",
  description: "Famous for his role in Frasier."
  )
fileja = URI.open('https://images.unsplash.com/photo-1613029226236-b3c704806aa2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petj.pet_pics.attach(io: fileja, filename: 'eddiea.png', content_type: 'image/png')
filejb = URI.open('https://images.unsplash.com/photo-1571570307831-0fe3b120bafe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petj.pet_pics.attach(io: filejb, filename: 'eddieb.png', content_type: 'image/png')
filejc = URI.open('https://images.unsplash.com/photo-1613029249698-48cfdd88d47b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petj.pet_pics.attach(io: filejc, filename: 'eddiec.png', content_type: 'image/png')
filejd = URI.open('https://images.unsplash.com/photo-1554039533-eb4a99deaf72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
petj.pet_pics.attach(io: filejd, filename: 'eddied.png', content_type: 'image/png')
petj.save
PetSchedule.create(date: '2021-7-24', pet: petj);
PetSchedule.create(date: '2021-7-25', pet: petj);
PetSchedule.create(date: '2021-7-26', pet: petj);
PetSchedule.create(date: '2021-7-29', pet: petj);
PetSchedule.create(date: '2021-7-30', pet: petj);
PetSchedule.create(date: '2021-7-31', pet: petj);
PetSchedule.create(date: '2021-8-3', pet: petj);
PetSchedule.create(date: '2021-8-4', pet: petj);
puts "Pet J created!"

puts 'Finished!'
