require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(8)
  )
end
users = User.all

20.times do
  Item.create!(
  user: users.sample,
  name: Faker::Lorem.word
  )
end
items = Item.all

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
