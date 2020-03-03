# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant.destroy_all

# user = User.first

# Restaurant.create!(name: 'mcdonalds', address: 'lisboa', user: user )
# Restaurant.create!(name: 'patodonalds', address: 'porto', user_id: user.id )
# Restaurant.create!(name: 'outra porra', address: 'algarve', user_id: user.id )

# p "Created #{Restaurant.count} restaurants"


puts 'Cleaning database...'
Comment.destroy_all
Restaurant.destroy_all
User.destroy_all

puts 'Creating user...'
user = User.create! :email => 'api_user@gmail.com', :password => 'api_user', :password_confirmation => 'api_user'

puts 'Creating restaurant...'
restaurant = Restaurant.create! :name => 'rexmortus', :address => '100 Bourke Street, Melbourne', :user => user

puts 'Creating comments...'
Comment.create! :restaurant => restaurant, :user => user, :content => 'Example Comment 1'
Comment.create! :restaurant => restaurant, :user => user, :content => 'Example Comment 2'
Comment.create! :restaurant => restaurant, :user => user, :content => 'Example Comment 3'

puts 'Finished!'
