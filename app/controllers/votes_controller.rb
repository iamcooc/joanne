class VotesController < ApplicationController
	def new
		@vote = Vote.new
		@nicks = distinct_count_query(1)
		@maggies = distinct_count_query(2)
	end
	
	def create
		@vote = Vote.new(vote_params)
    @vote.ip = request.remote_ip
  
    respond_to do |format|
      if @vote.save

      	@nicks = distinct_count_query(1)
				@maggies = distinct_count_query(2)

      
        #format.html #{ redirect_to @invite, notice: 'Invite was successfully created.' }
        format.js #{ render location: @nicks,@maggies }
      else
      	@message =" Looks like you've voted before. Thanks for yor support !"
      	@nicks = distinct_count_query(1)
				@maggies = distinct_count_query(2)
        #format.html { render :new }
        format.js #{ render json: @invite.errors, status: :unprocessable_entity }
      end
    end
	end

	def show

	end

	private
		def vote_params
      params.require(:vote).permit(:candidate)
    end

    def distinct_count_query(name)
    	Vote.where(candidate: name).select(:ip).distinct.count
    end	
end
