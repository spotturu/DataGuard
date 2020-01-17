module ApplicationHelper
	def get_current_date_in_text
		Date.today.strftime("%m/%d/%Y")
	end
end
