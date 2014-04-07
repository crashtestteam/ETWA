class QuestionPool < ActiveRecord::Base
	has_many :answer_pools
	has_and_belongs_to_many :attempts
	has_and_belongs_to_many :labels
end
