# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create([
	{content: "Which came first the chicken or the egg?", difficulty: "hard"}, 
	{content: "Did you dream last night?", difficulty: "easy"}, 
	{content: "What Inspires You?", difficulty: "medium"},
	{content: "What was the last thing you bought?", difficulty: "medium"},
	{content: "What do you typically have for breakfast?", difficulty: "easy"},
	{content: "Is a pessimist's blood type B-negative?", difficulty: "easy"},
	{content: "If the FBI breaks your door down do they have to pay for it?", difficulty: "hard"},
	{content: "If a turtle doesn't have a shell, is he homeless or naked? ", difficulty: "medium"},
	{content: "What do sheep count when they can't get to sleep?", difficulty: "hard"},
	{content: "What is the speed of dark?", difficulty: "easy"},
	{content: "What type of toothpaste do you use", difficulty: "easy"},
	{content: "What language is the second most popular in the U.S.?", difficulty: " medium"},
	{content: "In what country can you go to see masked dance-dramas known as Khon?", difficulty: "hard"},
	{content: "HOW DO I TURN OFF CAPSLOCK? I ACCIDENTALLY TURNED IT ON YESTERDAY AND I DONT KNOW HOW TO TURN IT BACK OFF.", difficulty: "medium"},
	{content: "Is there any possible way of making 2+2=5?", difficulty: "medium"}
	])

Answer.create([
	{content: "Egg", points: 1, question_id: 1, correct: true}, 
	{content: "chicken", points: 1, question_id: 1, correct: true}, 
	{content: "Yes", points: 3, question_id: 2, correct: true}, 
	{content: "No", points: 0,  question_id: 2, correct: false}, 
	{content: "Music", points: 5,  question_id: 3, correct: true}, 
	{content: "Work", points: 0, question_id: 3, correct: false}, 
	{content: "Love", points: 7, question_id: 3, correct: true}, 
	{content: "Traffic", points: 1, question_id: 3, correct: true},
	{content: "Bread", points: 1, question_id: 4, correct: true},
	{content: "Lollypop", points: 0, question_id: 4, correct: false},
	{content: "Cornflakes", points: 2, question_id: 5, correct: true},
	{content: "Pancakes", points: 4, question_id: 5, correct: true},
	{content: "Coffee", points: 0, question_id: 5, correct: false},
	{content: "Fries", points: 0, question_id: 5, correct: false},
	{content: "Yes", points: 0, question_id: 6, correct: false},
	{content: "No", points: 0, question_id: 6, correct: false},
	{content: "No", points: 1, question_id: 7, correct: true},
	{content: "Depends", points: 1, question_id: 7, correct: true},
	{content: "Yes", points: 0, question_id: 7, correct: false},
	{content: "Homeless", points: 2, question_id: 8, correct: true},
	{content: "Naked", points: 0, question_id: 8, correct: false},
	{content: "Chicks", points: 5, question_id: 9, correct: true},
	{content: "Stars", points: 3, question_id: 9, correct: true},
	{content: "Wolves", points: 0, question_id: 9, correct: false},
	{content: "3,6 km/h", points: 0, question_id: 10, correct: false},
	{content: "40000 km/h", points: 0, question_id: 10, correct: false},
	{content: "2,05 Mbps", points: 3, question_id: 10, correct: true},
	{content: "Pepsodent", points: 2, question_id: 11, correct: true},
	{content: "Orbit", points: 0, question_id: 11, correct: false},
	{content: "Dirol", points: 0, question_id: 11, correct: false},
	{content: "Chinese", points: 0, question_id: 12, correct: false},
	{content: "Spanish", points: 3, question_id: 12, correct: true},
	{content: "Russian", points: 0, question_id: 12, correct: false},
	{content: "Thai", points: 5, question_id: 13, correct: true},
	{content: "Vietnam", points: 0, question_id: 13, correct: false},
	{content: "Do not know", points: 0, question_id: 14, correct: false},
	{content: "Register howtoturnoffcapslock.com", points: 3, question_id: 14, correct: true},
	{content: "The easiest way is to flip the positions of 4 and 5 on the number line", points: 0, question_id: 15, correct: false},
	{content: "Another method is to use LSD (Least Sequential Denominators)", points: 2, question_id: 15, correct: true}
	])
Timetable.create([
	{slots: 25, location: "319"}, 
	{slots: 45, location: "317, 319"}])
Label.create([
	{name: "poetry"}, 
	{name: "icehockey"}, 
	{name: "cooking"}])
Role.create([
	{name: "admin"}, 
	{name: "applicant"}, 
	{name: "sys_admin"}, 
	{name: "manager"}])
Test.create([
	{title: "Alice in wonderland"}, 
	{title: "Don't stop me know"}])
User.create([
	{name: "Wolfgang", surname: "Mozart", personal_id: 112233, email: "wolf@mozart.net", phone_number: 2254771, city: "Salzburg", country: "Austria", gender: "male", address: "Wismari 22 - 13"}, 
	{name: "Freddy", surname: "Mercury", personal_id: 123, email: "living@onmyown.com", phone_number: 2254771, city: "London", country: "England", gender: "male", address: "Luise 1"}])
Attempt.create(user_id:1, timetable_id: 2)
AttemptAnswer.create(attempt_id: 1, answer_id: 1)
AttemptQuestion.create(attempt_id: 1, question_id: 1)
LabelsQuestion.create([{question_id: 2, label_id: 1}, {question_id: 1, label_id: 3}, {question_id: 3, label_id: 2}])