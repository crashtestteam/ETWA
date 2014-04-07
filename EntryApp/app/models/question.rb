class Question < ActiveRecord::Base
	has_many :labels_questions
	has_many :answers
	has_many :attempt_questions
end
