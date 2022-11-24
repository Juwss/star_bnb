# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Rerservation.destroy_all
Star.destroy_all
User.destroy_all

user1 = User.new(email: "james_smith@gmail.com", password: "James2000", last_name: "Franco", first_name: "James")
user1.save

file1 = URI.open("https://leclaireur.fnac.com/wp-content/uploads/2022/11/push-beyonce-numero-magazine-1.webp")
star1 = Star.new(first_name: "Beyoncé", last_name: "Knowles", category: "Music artist", price: "1000", description: "Performeuse reconnue, Beyoncé est adepte des concerts en petit comité et saura mettre une ambiance de feu dans vos évènements")
star1.user = user1
star1.photo.attach(io: file1, filename: "image.webp", content_type: "image/webp")
star1.save

user2 = User.new(email: "jack_pearson@gmail.com", password: "Jack2000", last_name: "Pearson", first_name: "Jack")
user2.save

file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/08/President_Trump_Meets_with_Sentencing_Commutation_Recipients_%2849624188912%29_%28cropped%29.jpg")
star2 = Star.new(first_name: "Kim", last_name: "Kardashian", category: "Reality TV star", price: "3000", description: "Kim Kardashian saura vous guider dans vos choix. Elle incarne un style de vie à elle toute seule ! En sa compagnie vous découvrirez les monde des strass et des paillettes à l’américaine.")
star2.user = user2
star2.photo.attach(io: file2, filename: "image.jpg", content_type: "image/jpg")
star2.save

file3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Dwayne_Johnson_2014%28Cropped%29.jpg/441px-Dwayne_Johnson_2014%28Cropped%29.jpg")
star3 = Star.new(first_name: "Dwayne", last_name: "Johnson", category: "Actor/actress", price: "900", description: "Fan d’activités sportives en tout genres, Dwayne Johnson a également une formation de coah sportif et nutrition. Il saura vous motiver et donner les clés pour faire le plein d’énergie.")
star3.user = user2
star3.photo.attach(io: file3, filename: "image.jpg", content_type: "image/jpg")
star3.save
