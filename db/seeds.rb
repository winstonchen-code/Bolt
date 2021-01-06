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

runclass1 = RunClass.create(name: "Bolt I", level: "beginner", description: "Have you been away from the starting line for a while?? Have you missed some ruuns? Do you miss running? Join our Bolt coaches for this light 30 minute run that will inspire you to get back to starting and finishing runs again.")
runclass2 = RunClass.create(name: "Bolt II", level: "intermediate", description: "One hour. 60 minutes. Just you and the treadmill. Well, actually, it's you and the treadmill and one of our amazing Bolt coaches. Get ready to roll through an excellent run. We'l make sure the hour on the treadmill is an hour well spent. This intermeditate recovery run proves that the treadmill does not need to be a dreadmill.")
runclass3 = RunClass.create(name: "Bolt III", level: "advanced", description: " If you want to become a better runner... become a better athlete. Join our Bolt coaches for this great workout. You'll warm up, run intervals and be guided through a series of exercises that will help strengthen your running.")
runclass4 = RunClass.create(name: "Bolt IV", level: "pro", description: "Who knew running 5 miles could be so fun? We did! Join our Bolt coaches on this distance guided run. This run will have you motivated, inspired and excited to go longer and better.")
runclass5 = RunClass.create(name: "Bolt V", level: "master", description: "Hey pro! Join our Bolt Coaches for this great distance based guided run. Our coaches will be with you every stride to make sure you run a relaxed, confident, and strong for the full half marathon distance.")

runsession1 = RunSession.create(instructor: "Daniel", start_date: DateTime.new(2021,9,2,12), duration: 30, location: 8, capacity: 30, run_class_id: runclass1.id)
runsession2 = RunSession.create(instructor: "Ella", start_date: DateTime.new(2021,9,2,12), duration: 60, location: 4, capacity: 30, run_class_id: runclass1.id)
runsession3 = RunSession.create(instructor: "Jorja", start_date: DateTime.new(2021,9,2,12), duration: 30, location: 6, capacity: 30, run_class_id: runclass1.id)
runsession4 = RunSession.create(instructor: "Julian", start_date: DateTime.new(2021,9,2,12), duration: 60, location: 1, capacity: 30, run_class_id: runclass1.id)
runsession5 = RunSession.create(instructor: "Brent", start_date: DateTime.new(2021,9,2,12), duration: 30, location: 5, capacity: 30, run_class_id: runclass1.id)
runsession6 = RunSession.create(instructor: "Kevin", start_date: DateTime.new(2021,9,2,12), duration: 45, location: 7, capacity: 30, run_class_id: runclass1.id)
runsession7 = RunSession.create(instructor: "James", start_date: DateTime.new(2021,9,2,12), duration: 60, location: 3, capacity: 30, run_class_id: runclass1.id)
runsession8 = RunSession.create(instructor: "Leon", start_date: DateTime.new(2021,9,2,12), duration: 30, location: 4, capacity: 30, run_class_id: runclass1.id)
runsession9 = RunSession.create(instructor: "Chloe", start_date: DateTime.new(2021,9,2,12), duration: 60, location: 1, capacity: 30, run_class_id: runclass1.id)
runsession10 = RunSession.create(instructor: "Justin", start_date: DateTime.new(2021,9,2,12), duration: 75, location: 1, capacity: 30, run_class_id: runclass1.id)
runsession11 = RunSession.create(instructor: "Shawn", start_date: DateTime.new(2021,9,2,12), duration: 60, location: 3, capacity: 30, run_class_id: runclass1.id)
runsession12 = RunSession.create(instructor: "Angelie", start_date: DateTime.new(2021,9,2,12), duration: 45, location: 6, capacity: 30, run_class_id: runclass1.id)
runsession13 = RunSession.create(instructor: "Capri", start_date: DateTime.new(2021,9,2,12), duration: 75, location: 2, capacity: 30, run_class_id: runclass1.id)
runsession14 = RunSession.create(instructor: "Carter", start_date: DateTime.new(2021,9,2,12), duration: 45, location: 1, capacity: 30, run_class_id: runclass1.id)

GymClass.create(gym_id: gym1.id, run_class_id: runclass1.id)
GymClass.create(gym_id: gym2.id, run_class_id: runclass2.id)
GymClass.create(gym_id: gym3.id, run_class_id: runclass3.id)
GymClass.create(gym_id: gym5.id, run_class_id: runclass4.id)
GymClass.create(gym_id: gym6.id, run_class_id: runclass5.id)
GymClass.create(gym_id: gym7.id, run_class_id: runclass1.id)
GymClass.create(gym_id: gym8.id, run_class_id: runclass2.id)
GymClass.create(gym_id: gym8.id, run_class_id: runclass3.id)
GymClass.create(gym_id: gym5.id, run_class_id: runclass4.id)

FavoriteClass.create(member_id: member1.id, run_class_id: runclass1.id)
FavoriteClass.create(member_id: member1.id, run_class_id: runclass2.id)
FavoriteClass.create(member_id: member3.id, run_class_id: runclass3.id)
FavoriteClass.create(member_id: member4.id, run_class_id: runclass4.id)
FavoriteClass.create(member_id: member5.id, run_class_id: runclass5.id)
FavoriteClass.create(member_id: member6.id, run_class_id: runclass1.id)
FavoriteClass.create(member_id: member7.id, run_class_id: runclass2.id)
FavoriteClass.create(member_id: member8.id, run_class_id: runclass3.id)
FavoriteClass.create(member_id: member9.id, run_class_id: runclass4.id)
FavoriteClass.create(member_id: member10.id, run_class_id: runclass5.id)
FavoriteClass.create(member_id: member10.id, run_class_id: runclass1.id)
FavoriteClass.create(member_id: member10.id, run_class_id: runclass5.id)

Enrollment.create(member_id: member1.id, run_session_id: runsession1.id)
Enrollment.create(member_id: member2.id, run_session_id: runsession2.id)
Enrollment.create(member_id: member3.id, run_session_id: runsession3.id)
Enrollment.create(member_id: member4.id, run_session_id: runsession4.id)
Enrollment.create(member_id: member5.id, run_session_id: runsession5.id)
Enrollment.create(member_id: member6.id, run_session_id: runsession6.id)
Enrollment.create(member_id: member7.id, run_session_id: runsession7.id)
Enrollment.create(member_id: member8.id, run_session_id: runsession8.id)
Enrollment.create(member_id: member9.id, run_session_id: runsession9.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)
Enrollment.create(member_id: member10.id, run_session_id: runsession10.id)

puts "seed ran"