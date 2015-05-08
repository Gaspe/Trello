class Task < ActiveRecord::Base
	 validates :title, :description,:duration, presence: true
	 belongs_to :user
end
