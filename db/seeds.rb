Project.destroy_all
Client.destroy_all
Task.destroy_all


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

task3 = Task.create(
    description: "Create a react website",
    hours: "12 hours",
    pay: 45,
    due_date: Date.new(2022,12,21)
)

task4 = Task.create(
    description: "Desgin React website",
    hours: "10 hours",
    pay: 45,
    due_date: Date.new(2023,1,25)

)


puts "🌱 Seeding projects..."

project1 = Project.create(
    name: "UI web development",
    timeframe: 3,
    category: "frontend",
    client_id: client1.id,
    task_id: task2.id

)

project2 = Project.create(
    name: "Deltek Marketing",
    timeframe: 6,
    category: "social media",
    client_id: client2.id,
    task_id: task1.id
)

project3 = Project.create(
    name: "Collins Website",
    timeframe: 7,
    category: "UI/UX",
    client_id: client3.id,
    task_id: task3.id,
)

puts "✅ Done seeding!"
