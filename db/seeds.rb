# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.new
u1.email = "a@a.com"
u1.password = "12341234"
u1.password_confirmation = "12341234"
u1.first_name= "Kyndrea"
u1.last_name= "Head"
u1.save

u2 = User.new
u2.email = "b@b.com"
u2.password = "12341234"
u2.password_confirmation = "12341234"
u2.first_name= "Elizabeth"
u2.last_name= "Kuehler"
u2.save
puts "#{User.count} users in the database"

Category.destroy_all
c1 = Category.new
c1.category_name = "Fruits and Vegetables"
c1.save

c2 = Category.new
c2.category_name = "Beverages"
c2.save

c3 = Category.new
c3.category_name = "Processed Goods"
c3.save

c4 = Category.new
c4.category_name = "Fertilizer"
c4.save

c5 = Category.new
c5.category_name = "Other"
c5.save
puts "#{Category.count} categories in the database"
