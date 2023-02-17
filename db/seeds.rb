# puts "☠️ Deleting old data..."
Client.destroy_all
Appointment.destroy_all
Barber.destroy_all
Hairstyle.destroy_all

puts "🌱 Seeding data..."

puts "Creating clients..."
Client.create(name: "Pitbull/Mr. Worldwide")
Client.create(name: "Questlove")
Client.create(name: "Pink")
Client.create(name: "Prince Zuko")
Client.create(name: "Odell Beckham Jr")


puts "Creating barbers..."
Barber.create(name: "Wolverine")
Barber.create(name: "Baraka")
Barber.create(name: "Freddie Kruger")
Barber.create(name: "Edward Scissorhands")
Barber.create(name: "Super Shredder")

puts "Creating hairstyles..."
Hairstyle.create(
  name: "Family Haircut",
  price: 25,
  duration: 20,
  description: "A nice clean head shave. As Dom Toretto says, 'I don't have friends, I got family.'",
  picture: "./vindiesel.jpg",
  soundclip: ""
)
Hairstyle.create(
  name: "Afro Samurai",
  price: 50,
  duration: 60,
  description: "No description is needed for this haircut.",
  picture: "./afrosamurai.jpg",
  soundclip: ""
)
Hairstyle.create(
  name: "Extra Cool Goth Kid",
  price: 35,
  duration: 30,
  description: "Be different with this haircut. 'Everyone's just walking around like a bunch of conformists, they're all zombies racing to their graves.' -Pete Thelman",
  picture: "./extracoolgothkid.jpg",
  soundclip: ""
)
Hairstyle.create(
  name: "Cobra Kai",
  price: 40,
  duration: 45,
  description: "The best defense is more offense. With this haircut, you don't have to worry about defense.",
  picture: "./cobrakai.jpg",
  soundclip: ""
)
Hairstyle.create(
  name: "Statefarm",
  price: 40,
  duration: 40,
  description: "This Mahomes magic haircut will give you the confidence just like the MVP.",
  picture: "./statefarm.jpg",
  soundclip: ""
)

puts "Creating appointments..."
10.times {
  Appointment.create(
    client: Client.all.sample,
    barber: Barber.all.sample,
    hairstyle: Hairstyle.all.sample,
    datetime: rand(1000..10000) # need random datetime range
  )
}
Appointment.create(client_id: 2, barber_id: Barber.ids.sample, hairstyle_id: 1, datetime: "2023-02-17 17:00")
# time format: %Y-%m-%dT%l:%M
# Appointment.create(client_id: 2, barber_id: Barber.ids.sample, hairstyle_id: 1, datetime: rand(1000..10000))
# Appointment.create(client_id: 3, barber_id: Barber.ids.sample, hairstyle_id: 2, datetime: rand(1000..10000))
# Appointment.create(client_id: 4, barber_id: Barber.ids.sample, hairstyle_id: 4, datetime: rand(1000..10000))
# Appointment.create(client_id: 5, barber_id: Barber.ids.sample, hairstyle_id: 3, datetime: rand(1000..10000))
# Appointment.create(client_id: 6, barber_id: Barber.ids.sample, hairstyle_id: 6, datetime: rand(1000..10000))

puts "✅ Done seeding!"
