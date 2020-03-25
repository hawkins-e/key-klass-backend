# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Challenge.destroy_all

User.create(username: "ehawk")
User.create(username: "jhawk")

Challenge.create(
    challenge_name:"King of the Jungle",
    challenge_photo_url:"https://images.pexels.com/photos/41315/africa-african-animal-cat-41315.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    learning_blurb: "Male African Lions can weigh up to 420 pounds. Their scientific name is Panthera Leo."
)

Challenge.create(
    challenge_name:"Monkeyin' Around", challenge_photo_url:"https://images.pexels.com/photos/2213575/pexels-photo-2213575.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    learning_blurb: "Did you know? Most monkeys sleep sitting in trees, balancing on a branch, often upright resting upon their bottoms!"
)

Challenge.create(
challenge_name:"Got Milk?", challenge_photo_url:"https://images.pexels.com/photos/2647053/pexels-photo-2647053.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",learning_blurb: "Did you know? Dairy cows can produce 15,000 to 37,500 pounds of milk per year!"
)

Statistic.create(user_id: 1, challenge_id: 1, speed: 60 , accuracy: 91)
Statistic.create(user_id: 1, challenge_id: 2, speed: 68, accuracy: 95)
Statistic.create(user_id: 2, challenge_id: 3, speed: 80, accuracy: 85)