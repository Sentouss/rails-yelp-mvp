# db/seeds.rb
puts "Cleaning Restaurant database..."
Restaurant.destroy_all

puts "Creating restaurants..."
soleil_anatolie = {name: "Soleil D'Anatolie", address: "1 Rue Etienne Dolet, 75020 Paris", category: "belgian"}
auberge_artistes =  {name: "Auberge des Artistes", address: "132 Bd de Ménilmontant, 75020 Paris", phone_number: "01 43 61 11 65", category: "french"}
a_deux_pas = {name: "A Deux Pas", address: "55 Rue Saint-Maur, 75011 Paris", phone_number: "01 43 55 67 52", category: "french"}
paloma = {name: "Paloma", address: "93 Rue Julien Lacroix, 75020 Paris", phone_number: "06 65 96 88 46", category: "italian"}
le_plaisir = {name: "Le Plaisir", address: "14 Rue de Belleville, 75020 Paris", phone_number: "01 40 33 13 13", category: "french"}

[soleil_anatolie, auberge_artistes, a_deux_pas, paloma, le_plaisir].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
