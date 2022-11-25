# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

<<<<<<< HEAD
Rerservation.destroy_all
=======
puts "Cleaning seeds"
Reservation.destroy_all
>>>>>>> 8c16b25f651132581cd454e3cca0c3864959053f
Star.destroy_all
User.destroy_all
puts "Clean OK"

puts "Creating users"
user1 = User.new(email: "james_smith@gmail.com", password: "James2000", last_name: "Franco", first_name: "James")
user1.save
user2 = User.new(email: "jack_pearson@gmail.com", password: "Jack2000", last_name: "Pearson", first_name: "Jack")
user2.save
user3 = User.new(email: "john_lennon@gmail.com", password: "John2000", last_name: "Lennon", first_name: "John")
user3.save
puts "Users OK"

puts "Creating stars"
file1 = URI.open("https://images.rtl.fr/~c/770v513/rtl/www/1181306-beyonce-lors-d-un-concert-de-sa-tournee-on-the-run-tour-ii-le-3-juillet-2018-illustration.jpg")
star1 = Star.new(first_name: "Beyoncé", last_name: "Knowles", category: "Music artist", price: "1000", description: "Performeuse reconnue, Beyoncé est adepte des concerts en petit comité et saura mettre une ambiance de feu dans vos évènements")
star1.user = user1
star1.photo.attach(io: file1, filename: "image.jpg", content_type: "image/jpg")
star1.save

file2 = URI.open("https://www.virginradio.fr/wp-content/uploads/virginradio/2020/03/media-148.jpg")
star2 = Star.new(first_name: "Lady", last_name: "Gaga", category: "Music artist", price: "3000", description: "A la fois auteur, compositrice et interprète, Lady Gaga sait tout faire. Elle pourra vous proposer des performances épurées, seulement accompagnée de son piano, ou des shows complets avec des effets audiovisuels extraordinaires.")
star2.user = user2
star2.photo.attach(io: file2, filename: "image.jpg", content_type: "image/jpg")
star2.save

file3 = URI.open("https://www.francebleu.fr/s3/cruiser-production/2022/02/a91edfc7-4f3f-4962-9d57-72c77525c801/1200x680_maxpeoplefrfour479574.jpg")
star3 = Star.new(first_name: "Garou", last_name: "", category: "Music artist", price: "900", description: "Le chanteur québécois qui a commencé sa carrière en France en interprétant le personnage de Quasimodo dans Notre-Dame de Paris (1998) est aujourd'hui dans tous les coeurs. C'est une valeur sûre pour tous types d'évènements")
star3.user = user2
star3.photo.attach(io: file3, filename: "image.jpg", content_type: "image/jpg")
star3.save

file4 = URI.open("https://media.gqmagazine.fr/photos/5bd5bd0ba7c4de0011feef4c/16:9/w_2560%2Cc_limit/GettyImages-988181636.jpg")
star4 = Star.new(first_name: "50", last_name: "Cent", category: "Music artist", price: "500", description: "Des pavés à la gloire, tel est le chemin atypique suivi par le rappeur américain 50 Cent. Issu des quartiers misérables de New York, le protégé d'Eminem est aujourd'hui un artiste autant reconnu et admiré par le public, que craint et haï par le milieu. Pensez à lui pour créer la surprise auprès de vos invités !")
star4.user = user1
star4.photo.attach(io: file4, filename: "image.jpg", content_type: "image/jpg")
star4.save

file5 = URI.open("https://www.francetvinfo.fr/pictures/-EdT03sWaRaiVmXAw1Be0BmzCU0/752x423/2022/05/20/phpZh4274.jpg")
star5 = Star.new(first_name: "Kendrick", last_name: "Lamar", category: "Music artist", price: "500", description: "Kendrick Lamar est un rappeur et parolier américain. Il se lance en premier lieu sous le nom de K-Dot. Son premier single, «HiiPoWeR» se classe numéro 1 des charts hip-hop. Dernièrement aux VMAs, il a remporté 6 prix pour 8 sélections, dont «Vidéo de l'année». Il séduira toutes les générations par son flow poétique.")
star5.user = user1
star5.photo.attach(io: file5, filename: "image.jpg", content_type: "image/jpg")
star5.save

file6 = URI.open("http://www.chartsinfrance.net/style/breves/3/photo_1450345509.png")
star6 = Star.new(first_name: "Justin", last_name: "Bieber", category: "Music artist", price: "6000", description: "Justin apprend très jeune la guitare, le piano, la batterie et la trompette. Mais c’est grâce à ses talents de chanteur qu’il va connaître le succès médiatique. Il n’a que 12 ans lorsqu’il participe au concours de chant de sa ville natale. Aujourd'hui il est reconnu mondialement et ses musiques sont appréciées pour leur universalité. Vous en mettrez plein la vue avec cette star de renom.")
star6.user = user3
star6.photo.attach(io: file6, filename: "image.jpg", content_type: "image/jpg")
star6.save

file7 = URI.open("https://lequotidien.lu/wp-content/uploads/2017/01/celine-dion-840x450.jpg")
star7 = Star.new(first_name: "Céline", last_name: "Dion", category: "Music artist", price: "8000", description: "Elle est repérée par René Angelil dès l'âge de douze ans. Elle connaît un succès immédiat et enregistre ses premiers albums en 1981. Les albums s'enchaînent, notamment : « Incognito », « S'il suffisait d'aimer », disque de diamant en France et disque de platine au Canada, ou encore « Céline Dion ». Elle enchaîne depuis le début de sa carrière les tournées mondiales et ses concerts se jouent tous à guichets fermés. Réservez-la pour profiter d'un moment inédit avec cette immense star")
star7.user = user3
star7.photo.attach(io: file7, filename: "image.jpg", content_type: "image/jpg")
star7.save
puts "Stars OK"
