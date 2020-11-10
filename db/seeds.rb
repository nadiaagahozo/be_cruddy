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

movie = Movie.new(title: "Tenet", year: 2020, plot: "A secret agent embarks on a dangerous, time-bending mission to prevent the start of World War III.")
movie.save
movie = Movie.new(title: "Snowpiercer", year: 2013, plot: "Survivors of Earth's second Ice Age live out their days on a luxury train that ploughs through snow and ice. The train's poorest residents, who live in the squalid caboose, plan to improve their lot by taking over the engine room.")
movie.save
movie = Movie.new(title: "Inception", year: 2010, plot: "Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea an someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's very move.")
movie.save