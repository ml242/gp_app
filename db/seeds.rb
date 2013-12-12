# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "Matt", email: "matt@matt.com", password: "password", password_confirmation: "password")
u1 = User.create(name: "Kat", email: "kat@kat.com", password: "password", password_confirmation: "password")
itinerary1 = Itinerary.create(user_id: 1, title: "China", img_url: "http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_528ef22a4cd0b_1.JPG", description: "Want to see that Great Wall")
itinerary2 = Itinerary.create(user_id: 2, title: "Pittsburgh", img_url: "http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_528e297be299b_1.JPG", description: "Road Trip")