# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "Matt", email: "matt@matt.com", password: "password", password_confirmation: "password")
u2 = User.create(name: "Kat", email: "kat@kat.com", password: "password", password_confirmation: "password")
u3 = User.create(name: "Lou", email: "lou@lou.com", password: "password", password_confirmation: "password")
u4 = User.create(name: "Nico", email: "nico@lou.com", password: "password", password_confirmation: "password")
u5 = User.create(name: "John", email: "john@lou.com", password: "password", password_confirmation: "password")
u6 = User.create(name: "Jonny", email: "jonny@lou.com", password: "password", password_confirmation: "password")
u7 = User.create(name: "Iggy", email: "iggy@lou.com", password: "password", password_confirmation: "password")
u8 = User.create(name: "Bon", email: "bon@lou.com", password: "password", password_confirmation: "password")
u9 = User.create(name: "Tommy Lee", email: "tommy@lou.com", password: "password", password_confirmation: "password")
itinerary1 = Itinerary.create(user_id: 1, title: "China", img_url: "http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_528ef22a4cd0b_1.JPG", address: "China", description: "Want to see that Great Wall", latitude: 35.0000, longitude: 103.0000)
itinerary2 = Itinerary.create(user_id: 2, title: "Paris", img_url: "http://images.catholic.org/travel/destinations/2011012529_paris_night1.jpg", address: "Paris, France", description: "VIVA LA FRANCE", latitude: 48.8567, longitude: 2.3508)
itinerary3 = Itinerary.create(user_id: 1, title:"Mexico", img_url: "http://mexipride.com/us/wp-content/gallery/mexico-beaches-photos/Cancun_Mexico_Beach.jpg", address: "Mexico City, Mexico", description: "Bustling. Definitely the opposite of boring.")


itinerary4 = Itinerary.create(user_id: 1, title: "Rome", img_url: "http://www.freepixels.com/photos/13/med_061005_trdp_042.jpg", address: "Italy", description: "Journey to the Eternal City")
itinerary5 = Itinerary.create(user_id: 2, title: "Edinborough", img_url: "http://farm6.staticflickr.com/5171/5592408443_b7ed1c81e8_b.jpg", address: "Scotland", description: "Best Part of the Kingdom")
itinerary6 = Itinerary.create(user_id: 1, title:"Nashville", img_url: "http://mexipride.com/us/wp-content/gallery/mexico-beaches-photos/Cancun_Mexico_Beach.jpg", address: "Mexico City, Mexico", description: "Bustling. Definitely the opposite of boring.")
itinerary7 = Itinerary.create(user_id: 2, title: "NYC", img_url: "http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_528ef22a4cd0b_1.JPG", address: "China", description: "Want to see that Great Wall", latitude: 35.0000, longitude: 103.0000)
itinerary8 = Itinerary.create(user_id: 3, title: "Chicago", img_url: "http://images.catholic.org/travel/destinations/2011012529_paris_night1.jpg", address: "Paris, France", description: "VIVA LA FRANCE", latitude: 48.8567, longitude: 2.3508)
itinerary9 = Itinerary.create(user_id: 1, title: "Costa Rico", img_url: "http://mexipride.com/us/wp-content/gallery/mexico-beaches-photos/Cancun_Mexico_Beach.jpg", address: "Mexico City, Mexico", description: "Bustling. Definitely the opposite of boring.")
itinerary10 = Itinerary.create(user_id: 2, title: "Rio de Janeiro", img_url: "http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_528ef22a4cd0b_1.JPG", address: "China", description: "Want to see that Great Wall", latitude: 35.0000, longitude: 103.0000)
itinerary11 = Itinerary.create(user_id: 1, title: "Berlin", img_url: "http://images.catholic.org/travel/destinations/2011012529_paris_night1.jpg", address: "Paris, France", description: "VIVA LA FRANCE", latitude: 48.8567, longitude: 2.3508)
itinerary12 = Itinerary.create(user_id: 2, title: "Vancouver", img_url: "http://mexipride.com/us/wp-content/gallery/mexico-beaches-photos/Cancun_Mexico_Beach.jpg", address: "Mexico City, Mexico", description: "Bustling. Definitely the opposite of boring.")



item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")




item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Any trip to NYC has to include at least one stop at a Bodega!")
item4 = Item.create(name: "Beijing", address: "China", description: "One of the worlds greatest grey cities", img_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2013/01/beijing-smog-record-breaking-air-pollution-2-537x402.jpg")
