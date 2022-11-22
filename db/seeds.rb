# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Star.destroy_all
User.destroy_all

user2 = User.new(email: "tutu@gmail.com", password: "totototo2000")
user2.save
star1 = Star.new(first_name: "Toto", last_name: "Knowles")
star1.user = user2
star1.save
