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
GymClass.destroy_all
FavoriteClass.destroy_all

gym1 = Gym.create(location: "Washington D.C.", email: "bolt.dc@gmail.com", phone: "202-475-1233", indoor_or_outdoor: false)
gym2 = Gym.create(location: "Houston", email: "bolt.houston@gmail.com", phone: "281-475-1233", indoor_or_outdoor: true)
gym3 = Gym.create(location: "Los Angeles", email: "bolt.losangeles@gmail.com", phone: "213-475-6003", indoor_or_outdoor: true)
gym4 = Gym.create(location: "Seattle", email: "bolt.seattle@gmail.com", phone: "206-225-1113", indoor_or_outdoor: false)
gym5 = Gym.create(location: "Miami", email: "bolt.miami@gmail.com", phone: "305-325-3432", indoor_or_outdoor: false)
gym6 = Gym.create(location: "Chicago", email: "bolt.chicago@gmail.com", phone: "312-567-1203", indoor_or_outdoor: true)
gym7 = Gym.create(location: "Austin", email: "bolt.austin@gmail.com", phone: "512-023-4563", indoor_or_outdoor: true)
gym8 = Gym.create(location: "New York", email: "bolt.nyc@gmail.com", phone: "212-334-1233", indoor_or_outdoor: true)

member1 = Member.create(name: "Alex", age: "23", level: "beginner", email: "alex@gmail.com", password: "alex") 
member2 = Member.create(name: "Macy", age: "29", level: "advanced", email: "m@gmail.com", password: "macy")
member3 = Member.create(name: "Mai", age: "24", level: "intermediate", email: "mai@gmail.com", password: "mai")
member4 = Member.create(name: "Winston", age: "24", level: "intermediate", email: "winston@gmail.com", password: "winston")
member5 = Member.create(name: "Leo", age: "37", level: "beginner", email: "leo@gmail.com", password: "leo")
member6 = Member.create(name: "Duke", age: "27", level: "advanced", email: "duke@gmail.com", password: "duke")
member7 = Member.create(name: "Alejandro", age: "30", level: "intermediate", email: "alejandro@gmail.com", password: "alejandro")
member8 = Member.create(name: "Enzo", age: "19", level: "advanced", email: "enzo@gmail.com", password: "enzo")
member9 = Member.create(name: "Desi", age: "21", level: "beginner", email: "desi@gmail.com", password: "desi")
member10 = Member.create(name: "Zara", age: "29", level: "intermediate", email: "zara@gmail.com", password: "zara")
member11 = Member.create(name: "Julian", age: "32", level: "intermediate", email: "julian@gmail.com", password: "julian")
member12 = Member.create(name: "Rose", age: "38", level: "beginner", email: "rose@gmail.com", password: "rose")

runclass1 = RunClass.create(level: "Bolt 1", instructor: "Larry", start_date: DateTime.new(2021,9,2,12), location: 1, duration: 60)
runclass2 = RunClass.create(level: "Moderate Bolt", instructor: "Mary", start_date: DateTime.new(2021,10,3,14), location: 2, duration: 30)
runclass3 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass4 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass5 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass6 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass7 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass8 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass9 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass10 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass11 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass12 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass13 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)
runclass14 = RunClass.create(level: "Tempo Bolt", instructor: "Luke", start_date: DateTime.new(2021,8,2,12), location: 4, duration: 60)

GymClass.create(gym_id: gym1.id, run_class_id: runclass1.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass2.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass3.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass4.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass5.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass6.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass7.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass8.id)
GymClass.create(gym_id: gym1.id, run_class_id: runclass9.id)

FavoriteClass.create(member_id: member1.id, run_class_id: runclass1.id)
FavoriteClass.create(member_id: member2.id, run_class_id: runclass2.id)
FavoriteClass.create(member_id: member3.id, run_class_id: runclass3.id)
FavoriteClass.create(member_id: member4.id, run_class_id: runclass4.id)
FavoriteClass.create(member_id: member5.id, run_class_id: runclass5.id)
FavoriteClass.create(member_id: member6.id, run_class_id: runclass6.id)
FavoriteClass.create(member_id: member7.id, run_class_id: runclass7.id)
FavoriteClass.create(member_id: member8.id, run_class_id: runclass8.id)
FavoriteClass.create(member_id: member9.id, run_class_id: runclass9.id)
FavoriteClass.create(member_id: member10.id, run_class_id: runclass10.id)

puts "seed ran"

