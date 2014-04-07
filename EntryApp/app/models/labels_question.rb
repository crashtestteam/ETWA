class LabelsQuestion < ActiveRecord::Base
	belongs_to :label
	belongs_to :question
end
