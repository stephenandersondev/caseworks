# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Client.destroy_all
SocialWorker.destroy_all

specialties = ["Addiction", "Domestic Violence", "Transgender-Issues", "Food Insecurity", "Housing", "Medical Health", "Mental Health", "Job Security/Placement", "Legal", "Youth"]

20.times do
    SocialWorker.create(name: Faker::Name.name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone, specialty: specialties.sample, password: "password")
end

20.times do
    Client.create(name: Faker::Name.name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone, age: rand(15..60))
end