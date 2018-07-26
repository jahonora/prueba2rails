class ApplicationController < ActionController::Base
	helper_method :total_tasks

	def total_tasks
		Task.count
	end
end
