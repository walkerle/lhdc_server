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
Barber.create(name: "Wolverine", picture: "./wolverine.jpg")
Barber.create(name: "Edward Scissorhands", picture: "./edward.jpg")
Barber.create(name: "Deadpool", picture: "./deadpool.jpg")
Barber.create(name: "Crablante", picture: "./crablante.jpg")
Barber.create(name: "Baraka", picture: "./baraka.jpg")

puts "Creating hairstyles..."
Hairstyle.create(
  name: "Family Haircut",
  price: 25,
  duration: 20,
  description: "Get the look of a family man with a nice clean head shave. As Dom Toretto says, \"I don't have friends, I got family.\"",
  picture: "./vindiesel.jpg",
  soundclip: "./vindieselsound.mp3"
)
Hairstyle.create(
  name: "Afro Samurai",
  price: 50,
  duration: 60,
  description: "No description is needed for this haircut.",
  picture: "./afrosamurai.jpg",
  soundclip: "./afrosamuraisound.mp3"
)
Hairstyle.create(
  name: "Extra Cool Goth Kid",
  price: 35,
  duration: 30,
  description: "Be different with this haircut. \"Everyone's just walking around like a bunch of conformists, they're all zombies racing to their graves.\" -Michael (South Park)",  picture: "./extracoolgothkid.jpg",
  soundclip: ""
)
Hairstyle.create(
  name: "Cobra Kai",
  price: 40,
  duration: 45,
  description: "The best defense is more offense. With this haircut, you don't have to worry about defense.",
  picture: "./cobrakai.jpg",
  soundclip: "./cobrakaisound.mp3"
)
Hairstyle.create(
  name: "Statefarm",
  price: 40,
  duration: 40,
  description: "This Mahomes magic haircut will give you the confidence just like the MVP.",
  picture: "./statefarm.jpg",
  soundclip: "./statefarmsound.mp3"
)


puts "Creating appointments..."
10.times {
  # month = rand(1..12).to_s.rjust(2, '0')
  # day = rand(1..28).to_s.rjust(2, '0')
  # hour = rand(8..20).to_s.rjust(2, '0')
  # min = rand(0..59).to_s.rjust(2, '0')
  # datetime = "2023-#{month}-#{day}T#{hour}:#{min}"

  min_date = Time.now + 1.day
  max_date = Time.now + 3.month

  Appointment.create(
    client: Client.all.sample,
    barber: Barber.all.sample,
    hairstyle: Hairstyle.all.sample,
    # datetime: datetime # need random datetime range
    datetime: rand(min_date..max_date).strftime('%m/%d/%Y %I:%M %p')
  )
}
# Appointment.create(client_id: 2, barber_id: Barber.ids.sample, hairstyle_id: 1, datetime: "2023-02-17 17:00")
# time format: %Y-%m-%dT%l:%M
# Appointment.create(client_id: 2, barber_id: Barber.ids.sample, hairstyle_id: 1, datetime: "2023-02-17 17:00")
# Appointment.create(client_id: 3, barber_id: Barber.ids.sample, hairstyle_id: 2, datetime: "2023-02-18 18:00")
# Appointment.create(client_id: 4, barber_id: Barber.ids.sample, hairstyle_id: 4, datetime: "2023-02-19 15:00")
# Appointment.create(client_id: 5, barber_id: Barber.ids.sample, hairstyle_id: 3, datetime: "2023-02-20 12:00")
# Appointment.create(client_id: 6, barber_id: Barber.ids.sample, hairstyle_id: 6, datetime: "2023-02-21 13:00")

puts "✅ Done seeding!"
