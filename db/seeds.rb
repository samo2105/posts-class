# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Post.destroy_all

10.times do |i|
  Post.create(
    content: Faker::Lorem.words, 
    photo_url: Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'animals'), 
    user: Faker::Internet.email 
  )
end