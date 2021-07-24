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
    phone_number:  Faker::PhoneNumber.cell_phone_in_e164
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
fileaa = URI.open('https://images.unsplash.com/photo-1557973557-ddfa9ee8c5bf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peta.pet_pics.attach(io: fileaa, filename: 'funkya.png', content_type: 'image/png')
fileab = URI.open('https://images.unsplash.com/photo-1623513040995-811ad0c34514?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
peta.pet_pics.attach(io: fileab, filename: 'funkyb.png', content_type: 'image/png')
fileac = URI.open('https://images.unsplash.com/photo-1589965716319-4a041b58fa8a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
peta.pet_pics.attach(io: fileac, filename: 'funkyc.png', content_type: 'image/png')
peta.save

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

puts 'Finished!'
