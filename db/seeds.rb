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
toilet = Toilet.new(
  name: "Beautiful Toilet",
  description: "have a great toilet sesh while looking out of the window",
  price: rand(100),
  user_id: user.id
)
toilet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
toilet.save

file = URI.open("https://media.istockphoto.com/id/1207983247/photo/golden-toilet-bowl-in-wc.jpg?s=612x612&w=0&k=20&c=x6o1zMsFKViOR3gNNbKImgAnUiS4g7RwoFTpZzmE2JM=")
puts "picture saved"
puts "creating toilets....."
toilet = Toilet.new(
  name: "Throne",
  description: "hope you have a nice time dropping those golden nuggets!",
  price: rand(100),
  user_id: user.id
)
toilet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
toilet.save

file = URI.open("https://media.istockphoto.com/id/523086917/photo/old-dirty-toilet.jpg?s=612x612&w=0&k=20&c=BYvkVPq3ik-I7jfZD7bOw9PRwoxoyzo6SXvfKsvM-Wg=")
puts "picture saved"
puts "creating toilets....."
toilet = Toilet.new(
  name: "desperate",
  description: "only the most desperate come here",
  price: rand(100),
  user_id: user.id
)
toilet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
toilet.save

file = URI.open("https://media.istockphoto.com/id/1457409120/photo/festival-toilets.jpg?s=612x612&w=0&k=20&c=iR570W2uiK2k1Uii8YEpNHIfM-JpkipUH2FA05A6TM8=")
puts "picture saved"
puts "creating toilets....."
toilet = Toilet.new(
  name: "desert luxury",
  description: "your best bet to not pee yourself in the great desert",
  price: rand(100),
  user_id: user.id
)
toilet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
toilet.save

file = URI.open("https://media.istockphoto.com/id/1335393109/photo/modern-toilet-great-design-for-any-purposes-ceramic-toilet-bowl-with-toilet-paper-near-light.jpg?s=612x612&w=0&k=20&c=ivMdIAj53rTJuzkPUyTAraq0hvTVE7BxzE15vDh1U4Y=")
puts "picture saved"
puts "creating toilets....."
toilet = Toilet.new(
  name: "just a nice enough toilet",
  description: "basic toilet for basic poops",
  price: rand(100),
  user_id: user.id
)
toilet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
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
