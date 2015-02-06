module StaticPagesHelper

	def right_or_left(index)
		if index%2 == 0
			raw("right")
		else
			raw("left")
		end	
	end

	def render_offset(index)
		if index%2 != 0
			raw("col-md-offset-6")
		
		end	
	end		


end
