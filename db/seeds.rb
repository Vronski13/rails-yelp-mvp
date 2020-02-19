# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Database'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:'Cheap Italien',
    address: 'Kastanienallee 1, Berlin',
    phone_number: '030 123 123',
    category: 'italian'
  },
  {
    name:'Fancy Chinese',
    address: 'Kastanienallee 2, Berlin',
    phone_number: '030 124 124',
    category: 'chinese'
  },
  {
    name:'Running Sushi',
    address: 'Kastanienallee 3, Berlin',
    phone_number: '030 125 125',
    category: 'japanese'
  },
  {
    name:'Paris Baguette',
    address: 'Kastanienallee 4, Berlin',
    phone_number: '030 126 126',
    category: 'italian'
  },
  {
    name:'Cheese Heavan',
    address: 'Kastanienallee 5, Berlin',
    phone_number: '030 127 127',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
