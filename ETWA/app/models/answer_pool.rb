class AnswerPool < ActiveRecord::Base
	belongs_to :question_pool
	has_many :attempts, through: :answers_in_attempts
end
