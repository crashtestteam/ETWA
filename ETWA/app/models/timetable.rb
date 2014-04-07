class Timetable < ActiveRecord::Base
	has_many: attempts
	belongs_to :test
end
