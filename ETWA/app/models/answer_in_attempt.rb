class AnswerInAttempt < ActiveRecord::Base
	belongs_to :attempt
	belongs_to :answer_pool
end
