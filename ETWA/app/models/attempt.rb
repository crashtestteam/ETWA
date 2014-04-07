class Attempt < ActiveRecord::Base
	has_and_belongs_to_many :users
	belongs_to :timetable
	has_and_belongs_to_many :question_pools
	has_many :answer_in_attempts
	has_many :answer_pools, through: :answer_in_attempts
end
