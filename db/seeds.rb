# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
puts 'cleaning the database...'
User.destroy_all
Toilet.destroy_all

require "open-uri"

puts 'creating a user...'
user = User.create(email: "needtoilet@gmail.com", password: 123456)
file = URI.open("https://media.istockphoto.com/id/982696006/photo/modern-toilet-with-nature-view-3d-render.jpg?s=612x612&w=0&k=20&c=Xenac1YtWJOCNF8S3xwSAzllT5NNGIW1JZiqWx58uLc=")
puts "picture saved"
puts "creating toilets....."
toilet = Toilet.create(
  name: "NES",
  description: "A great console",
  price: rand(100),
  user_id: user.id
)
toilet.image.attach(io: file, filename: "nes.png", content_type: "image/png")
toilet.save

puts "toilets created..."
# 5.times do
#   toilet = Toilet.create(
#     name: Faker::Name.first_name,
#     description: Faker::Emotion.adjective,
#     price: rand(100),
#     user_id: user.id
#   )
# end
# puts "Created #{Toilet.count} toilets"
