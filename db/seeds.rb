# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
	Deck.create(name: Faker::Hacker.adjective)
end

10.times do
	Card.create(question: Faker::Hacker.say_something_smart , answer: Faker::Hacker.adjective, deck_id: rand(1..5))
end