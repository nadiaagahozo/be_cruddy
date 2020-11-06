# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command(or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new(first_name: "Angela", last_name: "Basset", known_for: "Waiting To Exhale")
actor.save
actor = Actor.new(first_name: "Will", last_name: "Smith", known_for: "I, Robot")
actor.save
actor = Actor.new(first_name: "Liam", last_name: "Neeson", known_for: "Taken")
actor.save