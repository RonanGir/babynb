puts "Cleaning db..."
User.destroy_all

puts "Creating users..."
justin = User.create!(
  firstname: 'Justin',
  lastname: 'Kuhn',
  email: 'j.kuhn@gmail.com',
  password: "123456",
  gender: 'male',
  age: 45,
  description: "Already have three children",
  photo: File.open(Rails.root.join('db/fixtures/images/justin.jpg'))
  )

kenneth = User.create!(
  firstname: 'Kenneth',
  lastname: 'Murphy',
  email: 'k.murphy@gmail.com',
  password: "123456",
  gender: 'male',
  age: 34,
  description: "Love kids",
  photo: File.open(Rails.root.join('db/fixtures/images/kenneth.jpg'))
  )


brett = User.create!(
  firstname: 'Brett',
  lastname: 'Wilson',
  email: 'b.wilson@hotmail.com',
  password: "123456",
  gender: 'male',
  age: 24,
  description: "J'ai pleins de bonbons dans ma caravane",
  photo: File.open(Rails.root.join('db/fixtures/images/brett.jpg'))
  )


judy = User.create!(
  firstname: 'Judy',
  lastname: 'Harrison',
  email: 'j.harrison@yahoo.com',
  password: "123456",
  gender: 'female',
  age: 36,
  description: "You'd like to book a new baby for my daughter",
  photo: File.open(Rails.root.join('db/fixtures/images/judy.jpg'))
  )


leona = User.create!(
  firstname: 'Leona',
  lastname: 'Robertson',
  email: 'l.robertson@gmail.com',
  password: "123456",
  gender: 'female',
  age: 50,
  description: "J'ai pleins de bonbons dans ma maison",
  photo: File.open(Rails.root.join('db/fixtures/images/leona.jpg'))
  )

puts "Creating babies..."
jordy = Baby.create!(
  user: justin,
  firstname: 'Jordy',
  lastname: 'Louis',
  gender: 'male',
  age: 2,
  origin: 'asian',
  location: 'bali',
  price: 20,
  description: 'Big head',
  photo: File.open(Rails.root.join('db/fixtures/images/jordy.jpg'))
  )

ben = Baby.create!(
  user: kenneth,
  firstname: 'Ben',
  lastname: 'Paf',
  gender: 'female',
  age: 1,
  origin: 'Israelian',
  location: 'Israel',
  price: 25,
  description: 'Nice smile ',
  photo: File.open(Rails.root.join('db/fixtures/images/ben.jpg'))
  )

tom = Baby.create!(
  user: brett,
  firstname: 'Tom',
  lastname: 'Pouce',
  gender: 'male',
  age: 3,
  origin: 'French',
  location: 'Nantes',
  price: 45,
  description: 'Tri-linguale ',
  photo: File.open(Rails.root.join('db/fixtures/images/tom.jpg'))
  )

paul = Baby.create!(
  user: judy,
  firstname: 'Paul',
  lastname: 'Popy',
  gender: 'female',
  age: 4,
  origin: 'American',
  location: 'Chicago',
  price: 5,
  description: 'Super fat, loves burgers',
  photo: File.open(Rails.root.join('db/fixtures/images/paul.jpg'))
  )

jerry = Baby.create!(
  user: leona,
  firstname: 'Jerry',
  lastname: 'Lewis',
  gender: 'male',
  age: 6,
  origin: 'chinese',
  location: 'shangai',
  price: 60,
  description: 'Eat its own poop',
  photo: File.open(Rails.root.join('db/fixtures/images/jerry.jpg'))
  )

baptiste = Baby.create!(
  user: justin,
  firstname: 'Baptiste',
  lastname: 'Louis',
  gender: 'male',
  age: 2,
  origin: 'Island',
  location: 'Nowhere',
  price: 70,
  description: 'Lot of hairs',
  photo: File.open(Rails.root.join('db/fixtures/images/baptiste.jpg'))
  )

pepito = Baby.create!(
  user: leona,
  firstname: 'Pepito',
  lastname: 'Pepitas',
  gender: 'male',
  age: 5,
  origin: 'Mexico',
  location: 'Mexico',
  price: 80,
  description: 'Nice ears',
  photo: File.open(Rails.root.join('db/fixtures/images/pepito.jpg'))
  )

pepita = Baby.create!(
  user: judy,
  firstname: 'Pepita',
  lastname: 'Panchos',
  gender: 'female',
  age: 6,
  origin: 'Argentina',
  location: 'Buenos Aires',
  price: 10,
  description: 'Knows how to draw ',
  photo: File.open(Rails.root.join('db/fixtures/images/pepita.jpg'))
  )

dimitrov = Baby.create!(
  user: kenneth,
  firstname: 'Dimitrov',
  lastname: 'Dimitrovska',
  gender: 'male',
  age: 4,
  origin: 'Russian',
  location: 'Moscow',
  price: 159,
  description: 'Have a tons of toys',
  photo: File.open(Rails.root.join('db/fixtures/images/dimitrov.jpg'))
  )

petra = Baby.create!(
  user: brett,
  firstname: 'Petra',
  lastname: 'Lewis',
  gender: 'female',
  age: 3,
  origin: 'American',
  location: 'detroit',
  price: 60,
  description: 'Can walk, run and fall',
  photo: File.open(Rails.root.join('db/fixtures/images/petra.jpg'))
  )
