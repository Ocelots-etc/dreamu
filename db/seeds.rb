# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Dream.destroy_all

love = Category.create(name: "Love")
nightmare = Category.create(name: "Nightmare")
nature = Category.create(name: "Nature")

Dream.create(dream_datetime: "", journal: "I found myself at my favorite coffee shop on a nice sunny afternoon. Then suddenly the ground opened up and I was in a hole staring face to face with my crush. He said, 'Our hearts hold hands'. I found myself dizzy and then woke up.", image_url: "https://www.flickr.com/photos/192933031@N02/?", category_id: love.id)

