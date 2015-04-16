
require 'csv'

CSV.foreach("db/vocab.csv", {encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
	Conjugation.create(row.to_hash)
end

CSV.foreach("db/wordbank.csv", {encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
	Card.create(row.to_hash)
end

CSV.foreach("db/deck_names.csv", {encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
	Deck.create(row.to_hash)
end
