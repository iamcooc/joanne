module InvitesHelper

	def render_isVeg(isVeg)
		if isVeg 
			"吃素"
		else isVeg 
			"無"
		end		
	end

	def render_location(location)
		if location == "1"
			"高雄"
		elsif location == "0"
			"宜蘭"
		end		
	end	

	def render_category(category)
		if category == 1
			"參加|喜帖"
		elsif category == 2
			"參加|不需喜帖"
		elsif category == 3
			"無法參加|喜帖"
		elsif category == 4
			"無法參加|不需喜帖"
		end	
	end	
end
