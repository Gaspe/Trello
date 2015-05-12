module TasksHelper
	def find_resp(id)
		return User.find(id).fullname
	end
end
