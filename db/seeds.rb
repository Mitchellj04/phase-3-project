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

puts "✅ Done seeding!"
