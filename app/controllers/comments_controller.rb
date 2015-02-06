class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

	def new
	end

	
	def create
		@comment = Comment.new(comment_params)
		@comment.ip = request.remote_ip
		#
		if @comment.save
			respond_to do |format|
				format.html 
				format.js	
			end	
			
		end
			
	end
		
	
	def index
		@comments = Comment.all
	end	

	def destroy
		
  	@comment.destroy
  	respond_to do |format|
  		format.html { redirect_to admin_comments_path, notice: 'comment was successfully destroyed.' }
  		format.json { head :no_content }
  	end
  end



	private
		def comment_params
			params.require(:comment).permit(:name, :message, :subject)
		end

		def set_comment
			@comment = Comment.find(params[:id])
		end	
end
