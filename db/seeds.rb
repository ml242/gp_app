# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "Matt", email: "matt@matt.com", password: "password", password_confirmation: "password")
u1 = User.create(name: "Kat", email: "kat@kat.com", password: "password", password_confirmation: "password")
itinerary1 = Itinerary.create(user_id: 1, title: "China", img_url: "http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_528ef22a4cd0b_1.JPG", address: "China", description: "Want to see that Great Wall", latitude: 35.0000, longitude: 103.0000)
itinerary2 = Itinerary.create(user_id: 2, title: "Paris", img_url: "http://images.catholic.org/travel/destinations/2011012529_paris_night1.jpg", address: "Paris, France", description: "VIVA LA FRANCE", latitude: 48.8567, longitude: 2.3508)
itinerary3 = Itinerary.create(user_id:1, title:"Mexico", img_url: "http://mexipride.com/us/wp-content/gallery/mexico-beaches-photos/Cancun_Mexico_Beach.jpg", address: "Mexico City, Mexico", description: "Cosby sweater roof party Carles, pop-up cred hella American Apparel master cleanse paleo bitters. You probably haven't heard of them Tumblr tattooed, polaroid jean shorts roof party 8-bit flexitarian. Bicycle rights distillery cardigan, shabby chic photo booth mumblecore retro freegan pop-up letterpress fashion axe kitsch before they sold out Blue Bottle butcher. Cornhole +1 mustache High Life messenger bag. Flexitarian paleo Carles deep v Austin, food truck PBR&B post-ironic. Narwhal ethnic McSweeney's, American Apparel YOLO High Life hoodie trust fund Portland typewriter irony fanny pack Wes Anderson semiotics Vice. Sartorial street art Odd Future irony, Carles chambray ennui pop-up cray hashtag.")
item1 = Item.create(name: "Robluchon", address: "Paris", description: "best food in town", img_url: "http://www.misopeckish.com/wp-content/uploads/2013/07/Latelier-de-Joel-Robuchon.jpg")
item2 = Item.create(name: "Sukiyabashi Jiro", address: "Japan", description: "subject of Jiro Dreams of Sushi", img_url: "http://eataduck.files.wordpress.com/2010/08/sukiyabashi-jiro-bar.jpg")
item3 = Item.create(name: "Bodega", address: "NYC", description: "Bicycle rights distillery cardigan, shabby chic photo booth mumblecore retro freegan pop-up letterpress fashion axe kitsch before they sold out Blue Bottle butcher. Cornhole +1 mustache High Life messenger bag. Flexitarian paleo Carles deep v Austin, food truck PBR&B post-ironic. Narwhal ethnic McSweeney's, American Apparel YOLO High Life hoodie trust fund Portland typewriter irony fanny pack Wes Anderson semiotics Vice. Sartorial street art Odd Future irony, Carles chambray ennui pop-up cray hashtag.")