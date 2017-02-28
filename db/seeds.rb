# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.create(name: 'Jank Brews', size: 75, user_id: 1)

card = MTG::Card.where(name: 'Alesha, who smiles at death').all
Card.create(name: "#{card.first.name}", cmc: card.first.cmc, color: "#{card.first.colors}", deck_id: 1)
