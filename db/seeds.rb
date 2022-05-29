# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[{name: "Monstera Deliciosa"},
  {name: "Monstera Monkey Mask"},
  {name: "Pothos"},
  {name: "Yucca"},
  {name: "Olive tree"},
  {name: "Pachira Aquatica"}].each do |variety_attrs|
    PlantVariety.create!(variety_attrs)
end