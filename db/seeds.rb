# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create!(username: "admin", password: "adminpassword")

event1 = Event.create!(name: "Cool Concert", description: "Concerts involving a greater number of artists, especially those that last for multiple days, are known as festivals. Unlike other concerts, which typically remain in a single genre of music or work of a particular artist, festivals often cover a broad scope of music and arts. Due to their size, festivals are almost exclusively held outdoors. New platforms for festivals are becoming increasingly popular such as Jam Cruise, which is a festival held on a cruise ship, as well as Mayan Holidaze, which is a destination festival held in Tulum. A few examples of the hundreds of festivals around the world.", venue:"Carnegie Hall", location: "New York City", date: Faker::Date.forward(233), time: Faker::Time.between(DateTime.now - 1, DateTime.now))
