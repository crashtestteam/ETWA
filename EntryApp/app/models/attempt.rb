class Attempt < ActiveRecord::Base
	belongs_to :user
	belongs_to :timetable
	has_many :attempt_questions
	has_many :attempt_answers
end
