# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
marc = User.new(
  firstname: 'Marc',
  lastname: 'Dutroux',
  email: 'pretre@hotmail.com',
  gender: 'male',
  age: '26',
  description: "Aimant et très affecteux avec tous les petits enfants"
  )

emile = User.new(
  firstname: 'Emile',
  lastname: 'Louis',
  email: 'pervers@hotmail.com',
  gender: 'male',
  age: '50',
  description: "J'ai pleins de bonbons dans ma caravane"
  )


