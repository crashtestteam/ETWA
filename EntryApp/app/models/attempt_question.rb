class AttemptQuestion < ActiveRecord::Base
	belongs_to :question
	belongs_to :attempt
end
