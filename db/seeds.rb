# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

user = User.create(email:"needtoilet@gmail.com", password:123456)
10.times do
toilet = Toilet.create(
  name: Faker::Ancient.god,
  description: Faker::Quote.most_interesting_man_in_the_world,
  user_id: user.id
)
end
