class CommentsController < ApplicationController
	def create
	    @user = User.find(params[:user_id])
	    @comment = @user.comments.create(comment_params)
	    redirect_to game_path(@game)
	end
 
  private
    def comment_params
      params.require(:comment).permit(:user, :body)
    end
end
end
