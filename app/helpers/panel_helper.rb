module PanelHelper

	def days_ago(date) # This changes months_ago into days
  		diff = Time.now - date.to_time
  		return date.ago if diff < 86400
  		"#{(diff.to_i / 86400)}"
	end
end
