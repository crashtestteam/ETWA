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
	{content: "What Inspires You?", difficulty: "medium"}])
Answer.create([
	{content: "Egg", points: 1, question_id: 1}, 
	{content: "chicken", points: 1, question_id: 1}, 
	{content: "Yes", points: 3, question_id: 2}, 
	{content: "No", points: 1,  question_id: 2}, 
	{content: "Music", points: 5,  question_id: 3}, 
	{content: "Work", points: 3, question_id: 3}, 
	{content: "Love", points: 7, question_id: 3}, 
	{content: "Traffic", points: 1, question_id: 3}
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