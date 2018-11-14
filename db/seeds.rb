# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



patrick = User.create(name: 'Patrick')
aisha = User.create(name: 'Aisha')

review1 = Review.create(content: "aaammmmaaazzziiinnngggg", user_id: 1)
review2 = Review.create(content: "2wulksham,dfgbc jdfhskzc,bvc ukeajrs,zbfjds", user_id: 2)
review3 = Review.create(content: "coooooooooooooooolll", user_id: 1)

score1 = Score.create(user_id: 1, points: 9999999)
score2 = Score.create(user_id: 2, points: 9999998)
score3 = Score.create(user_id: 1, points: 3)
score4 = Score.create(user_id: 2, points: 94)
score5 = Score.create(user_id: 1, points: 99)
score6 = Score.create(user_id: 1, points: 43)
score7 = Score.create(user_id: 2, points: 39)
score8 = Score.create(user_id: 1, points: 19)
score9 = Score.create(user_id: 2, points: 5)
score10 = Score.create(user_id: 2, points: 79)