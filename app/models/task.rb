class Task < ActiveRecord::Base
	 validates :title, :description,:duration, presence: true
	 belongs_to :user

	 validate :dates

	 def dates
	 	if !finish_date.blank? and finish_date < start_date
	 		errors.add(:dates, "Error.Finish date is being set earlier than the start one, please try again")
	    end
	end
end
