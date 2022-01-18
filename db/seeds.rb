# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

puts "Creating seeds..."

puts "[User]..."
User.create(email: "boob@kit.fr", password: "secret")

puts 'Creating reviews...'
Forum.create!({ pseudo: "LaBGdu75", age: "18", commentaire: "blablabla" })
Forum.create!({ pseudo: "Britney", age: "47", commentaire: "Bonjour, je suis Britney" })

puts "Seeds created !"
