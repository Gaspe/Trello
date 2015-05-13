class Task < ActiveRecord::Base
	 validates :title, :description,:duration, presence: true
	 belongs_to :user

	 validate :dates

	 def dates
	 	if !finish_date.blank? and finish_date < start_date
	 		errors.add(:dates, "Wrong dates. Try again")
	    end
	end
end
