# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Star.destroy_all
User.destroy_all

user1 = User.new(email: "james_smith@gmail.com", password: "James2000", last_name: "Franco", first_name: "James")
user1.save

file1 = URI.open("https://leclaireur.fnac.com/wp-content/uploads/2022/11/push-beyonce-numero-magazine-1.webp")
star1 = Star.new(first_name: "Beyoncé", last_name: "Knowles", category: "Music artist", price: "1000", description: "Performeuse reconnue, Beyoncé est adepte des concerts en petit comité et saura mettre une ambiance de feu dans vos évènements")
star1.user = user1
star1.photo.attach(io: file1, filename: "image.png", content_type: "image/png")
star1.save

user2 = User.new(email: "jack_pearson@gmail.com", password: "Jack2000", last_name: "Pearson", first_name: "Jack")
user2.save

file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/08/President_Trump_Meets_with_Sentencing_Commutation_Recipients_%2849624188912%29_%28cropped%29.jpg")
star2 = Star.new(first_name: "Kim", last_name: "Kardashian", category: "Reality TV star", price: "1050", description: "Elle annonce avec ses sœurs Kourtney, et Khloé qu'elles ont pris la décision de fermer leurs boutiques DASH douze ans après sa création. Le premier magasin avait vu le jour en 2006, et avait donné lieu à deux autres boutiques dont une à Miami, et une à New York qui avait déjà fermé ses portes en décembre 2016. Les sœurs n'avaient plus de temps à donner à leurs boutiques avec un emploi du temps trop chargé, et souhaitaient se consacrer à leurs propres projets.")
star2.user = user2
star2.photo.attach(io: file2, filename: "image.png", content_type: "image/png")
star2.save
