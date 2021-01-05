# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gym.destroy_all
Member.destroy_all
RunClass.destroy_all


gym1 = Gym.create(location: "Washington D.C." , email: "Bolt.dc@gmail.com", phone: "202-475-1233")
gym2 = Gym.create(location: "Houston" , email: "Bolt.houston@gmail.com", phone: "281-475-1233")
gym3 = Gym.create(location: "New York" , email: "Bolt.nyc@gmail.com", phone: "718-475-1233")

member1 = Member.create(name: "Alex", age: "23", email: "Alex@gmail.com", password: "alex")
member2 = Member.create(name: "Macy", age: "29", email: "Macy@gmail.com", password: "macy")
member3 = Member.create(name: "Jerry", age: "37", email: "Jerry@gmail.com", password: "jerry")

runclass1 = RunClass.create(instructor: "Larry", time: "2:00pm", location: "Studio 1", duration: "60 minutes")
runclass2 = RunClass.create(instructor: "Mary", time: "5:00pm", location: "Studio 2", duration: "30 minutes")
runclass3 = RunClass.create(instructor: "Luke", time: "8:00pm", location: "Studio 4", duration: "60 minutes")

GymClass.create(gym_id: gym1.id, run_class_id: runclass1.id)



puts "seed ran"



