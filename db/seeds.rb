puts "🌱 Seeding clients..."

client1 = Client.create(
    name: "United Illuminating",
    contact: "203-909-3456",
    manager: "John Mitchell"
)

client2 = Client.create(
    name: "Deltek Products",
    contact: "401-295-2525",
    manager: "Richard Kazarian"
)

client3 = Client.create(
    name: "Collins Construction",
    contact: "203-956-2945",
    manager: "Kevin Collins"
)

puts "🌱 Seeding tasks..."

task1 = Task.create(
    description: "Create a social media marketing plan through LinkedIn",
    hours: "3 hours",
    pay: 30,
    due_date: Date.new(2022,11,5)
)

task2 = Task.create(
    description: "Add a contact page to the home page to redirect the user",
    hours: "6 hours",
    pay: 45,
    due_date: Date.new(2022,12,21)
)

puts "✅ Done seeding!"
