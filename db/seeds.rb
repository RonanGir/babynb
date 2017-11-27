puts "Cleaning db..."
User.destroy_all

puts "Creating users..."
marc = User.create!(
  firstname: 'Marc',
  lastname: 'Dutroux',
  email: 'pretre@gmail.com',
  password: "123456",
  gender: 'male',
  age: 26,
  description: "Aimant et très affecteux avec tous les petits enfants"
  )

emile = User.create!(
  firstname: 'Emile',
  lastname: 'Louis',
  email: 'pervers@hotmail.com',
  password: "123456",
  gender: 'male',
  age: 50,
  description: "J'ai pleins de bonbons dans ma caravane"
  )


bob = User.create!(
  firstname: 'Bob',
  lastname: 'Lapointe',
  email: 'lolilol@yahoo.com',
  password: "123456",
  gender: 'male',
  age: 50,
  description: "J'ai pleins de bonbons dans mon sac"
  )


gerard = User.create!(
  firstname: 'Gérard',
  lastname: 'Tuche',
  email: 'tuche@caramail.com',
  password: "123456",
  gender: 'male',
  age: 50,
  description: "J'ai pleins de bonbons dans ma maison"
  )

puts "Creating babies..."
jordy = Baby.create!(
  user: marc,
  firstname: 'Jordy',
  lastname: 'Louis',
  gender: 'male',
  age: 2,
  origin: 'asian',
  location: 'bali',
  price: 20,
  description: 'Big head'
  )

benito = Baby.create!(
  user: marc,
  firstname: 'Ben',
  lastname: 'Paf',
  gender: 'female',
  age: 1,
  origin: 'Israelian',
  location: 'Israel',
  price: 25,
  description: 'Nice smile '
  )

tom = Baby.create!(
  user: gerard,
  firstname: 'Tom',
  lastname: 'Pouce',
  gender: 'shemale',
  age: 3,
  origin: 'French',
  location: 'Nantes',
  price: 45,
  description: 'Tri-linguale '
  )

gonzague = Baby.create!(
  user: gerard,
  firstname: 'Gonzag',
  lastname: 'Popy',
  gender: 'female',
  age: 4,
  origin: 'American',
  location: 'Chicago',
  price: 5,
  description: 'Super fat, loves burgers'
  )

jerry = Baby.create!(
  user: emile,
  firstname: 'Jerry',
  lastname: 'Lewis',
  gender: 'male',
  age: 6,
  origin: 'chinese',
  location: 'shangai',
  price: 60,
  description: 'Eat its own poop'
  )

baptiste = Baby.create!(
  user: emile,
  firstname: 'Baptiste',
  lastname: 'Louis',
  gender: 'male',
  age: 2,
  origin: 'Antartic',
  location: 'Nowhere',
  price: 70,
  description: 'Lot of hairs'
  )

pepito = Baby.create!(
  user: emile,
  firstname: 'Pepito',
  lastname: 'Pepitas',
  gender: 'male',
  age: 5,
  origin: 'Mexic',
  location: 'Mexico',
  price: 80,
  description: 'Nice ears'
  )

pepita = Baby.create!(
  user: marc,
  firstname: 'Pepita',
  lastname: 'Panchos',
  gender: 'shemale',
  age: 6,
  origin: 'Argentina',
  location: 'Buenos Aires',
  price: 10,
  description: 'Knows how to use a pistol '
  )

dimitrov = Baby.create!(
  user: bob,
  firstname: 'Dimitrov',
  lastname: 'Dimitrovska',
  gender: 'male',
  age: 4,
  origin: 'Russian',
  location: 'Moscow',
  price: 159,
  description: 'Beautiful skin'
  )

petra = Baby.create!(
  user: bob,
  firstname: 'Petra',
  lastname: 'Lewis',
  gender: 'female',
  age: 3,
  origin: 'American',
  location: 'detroit',
  price: 60,
  description: 'Eat its own poop'
  )
