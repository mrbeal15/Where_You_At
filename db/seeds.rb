10.times do
  User.create(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "kaboom", phone: Faker::PhoneNumber.phone_number, lat: 7.123456, lng: 7.123456)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
