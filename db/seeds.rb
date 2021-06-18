# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.create({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })

movie = Movie.create(title: "Blade Runner 2049", year: "2017", plot: "In 2049 Los Angeles, K Ryan Gosling works as a blade runner, a specialized law-enforcement agent dedicated to tracking down and killing rogue replicants. But when he uncovers a shocking conspiracy involving the robot laborers, he searches for the one person who might have answers: a former blade runner named Rick Deckard Harrison Ford, who vanished decades earlier.")

movie = Movie.create(title: "Movie 2", year: "2014", plot: "a bunch of things happen")
