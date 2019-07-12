# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 1 - Create Users
require 'ffaker'

puts "Create Fake Users..."

  100.times do
    User.create!(
      email: FFaker::Internet.email,
      password: "123456",
      password_confirmation: "123456"
    )
  end
puts "Fake users created succesfully..."

# 2 - Create Activities

puts "Create Fake Activities..."

  5.times do
    Activity.create!(
      name: FFaker::SportUS.name
    )
  end

puts "Fake Activities created succesfully..."

# 3 - Create Bays (food)

puts "Create Fake Bays..."

  7.times do
    Bay.create!(
      name: FFaker::Product.product_name
    )
  end
  
puts "Fake Bays created succesfully..."

# 4 - Create Inmroductive reason

puts "Create Fake Improductive Reason..."

  4.times do
    InproductiveReason.create!(
      name: FFaker::Vehicle.model
    )
  end
  
puts "Fake Improductive Reason created succesfully..."

# 5 - Create Project
# 6 - Cretae Voltage Level
# 7 - Create Profile
# 8 - Hours Records

