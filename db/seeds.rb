# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Star.destroy_all
User.destroy_all

user1 = User.new(email: "james_smith@gmail.com", password: "James2000", last_name: "Franco", first_name: "James")
user1.save

star1 = Star.new(first_name: "Beyoncé", last_name: "Knowles", category: "Humourist", price: "1000", description: "Performeuse reconnue, Beyoncé est adepte des concerts en petit comité et saura mettre une ambiance de feu dans vos évènements")
star1.user = user1
star1.save
